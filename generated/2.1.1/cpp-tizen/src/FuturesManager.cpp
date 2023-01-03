#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "FuturesManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


FuturesManager::FuturesManager()
{

}

FuturesManager::~FuturesManager()
{

}

static gboolean __FuturesManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __FuturesManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__FuturesManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool futuresV1HistoricalDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalDaysHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/days");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalFundingRateDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalFundingRateDaysHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/funding-rate/days");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalFundingRateDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalFundingRateDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalFundingRateDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalFundingRateDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalFundingRateHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalFundingRateHoursHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/funding-rate/hours");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalFundingRateHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalFundingRateHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalFundingRateHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalFundingRateHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalFundingRateMessagesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalFundingRateMessagesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&afterTs, "int");
	queryParams.insert(pair<string, string>("after_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("after_ts");
	}


	itemAtq = stringify(&lastCcseq, "int");
	queryParams.insert(pair<string, string>("last_ccseq", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("last_ccseq");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/funding-rate-messages");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalFundingRateMessagesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalFundingRateMessagesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalFundingRateMessagesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalFundingRateMessagesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1HistoricalFundingRateMessagesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalFundingRateMessagesHourHelper(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&hourTs, "int");
	queryParams.insert(pair<string, string>("hour_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("hour_ts");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/funding-rate-messages/hour");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalFundingRateMessagesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalFundingRateMessagesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalFundingRateMessagesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalFundingRateMessagesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1HistoricalFundingRateMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalFundingRateMinutesHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/funding-rate/minutes");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalFundingRateMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalFundingRateMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalFundingRateMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalFundingRateMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalFundingRateMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalHoursHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/hours");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalMinutesHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/minutes");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalOpenInterestDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalOpenInterestDaysHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/open-interest/days");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalOpenInterestDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalOpenInterestDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalOpenInterestDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalOpenInterestDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalOpenInterestHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalOpenInterestHoursHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/open-interest/hours");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalOpenInterestHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalOpenInterestHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalOpenInterestHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalOpenInterestHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalOpenInterestMessagesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalOpenInterestMessagesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&afterTs, "int");
	queryParams.insert(pair<string, string>("after_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("after_ts");
	}


	itemAtq = stringify(&lastCcseq, "int");
	queryParams.insert(pair<string, string>("last_ccseq", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("last_ccseq");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/open-interest-messages");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalOpenInterestMessagesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalOpenInterestMessagesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalOpenInterestMessagesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalOpenInterestMessagesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1HistoricalOpenInterestMessagesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalOpenInterestMessagesHourHelper(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&hourTs, "int");
	queryParams.insert(pair<string, string>("hour_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("hour_ts");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/open-interest-messages/hour");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalOpenInterestMessagesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalOpenInterestMessagesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalOpenInterestMessagesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalOpenInterestMessagesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1HistoricalOpenInterestMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalOpenInterestMinutesHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/open-interest/minutes");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalOpenInterestMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalOpenInterestMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalOpenInterestMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalOpenInterestMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalOpenInterestMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool futuresV1HistoricalTradesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalTradesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&afterTs, "int");
	queryParams.insert(pair<string, string>("after_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("after_ts");
	}


	itemAtq = stringify(&lastCcseq, "int");
	queryParams.insert(pair<string, string>("last_ccseq", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("last_ccseq");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/trades");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalTradesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalTradesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalTradesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalTradesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalTradesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalTradesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1HistoricalTradesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1HistoricalTradesHourHelper(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&hourTs, "int");
	queryParams.insert(pair<string, string>("hour_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("hour_ts");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/historical/trades/hour");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1HistoricalTradesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1HistoricalTradesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1HistoricalTradesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalTradesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::futuresV1HistoricalTradesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1HistoricalTradesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool futuresV1LatestFundingRateTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1LatestFundingRateTickHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/latest/funding-rate/tick");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1LatestFundingRateTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1LatestFundingRateTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1LatestFundingRateTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestFundingRateTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::futuresV1LatestFundingRateTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestFundingRateTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool futuresV1LatestInstrumentMetadataProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1LatestInstrumentMetadataHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/latest/instrument/metadata");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1LatestInstrumentMetadataProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1LatestInstrumentMetadataProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1LatestInstrumentMetadataAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::futuresV1LatestInstrumentMetadataSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool futuresV1LatestOpenInterestTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1LatestOpenInterestTickHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/latest/open-interest/tick");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1LatestOpenInterestTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1LatestOpenInterestTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1LatestOpenInterestTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestOpenInterestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::futuresV1LatestOpenInterestTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestOpenInterestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool futuresV1LatestTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1LatestTickHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/latest/tick");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1LatestTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1LatestTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1LatestTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::futuresV1LatestTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool futuresV1MarketsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1MarketsHelper(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/markets");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1MarketsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1MarketsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1MarketsAsync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsHelper(accessToken,
	market, 
	handler, userData, true);
}

bool FuturesManager::futuresV1MarketsSync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsHelper(accessToken,
	market, 
	handler, userData, false);
}

static bool futuresV1MarketsInstrumentsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1MarketsInstrumentsHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("instrument");
	}

	for (std::list
	<std::string>::iterator queryIter = instrumentStatus.begin(); queryIter != instrumentStatus.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("instrumentStatus", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/markets/instruments");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1MarketsInstrumentsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1MarketsInstrumentsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1MarketsInstrumentsAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool FuturesManager::futuresV1MarketsInstrumentsSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

static bool futuresV1MarketsInstrumentsUnmappedProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool futuresV1MarketsInstrumentsUnmappedHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("instrument");
	}

	for (std::list
	<std::string>::iterator queryIter = instrumentStatus.begin(); queryIter != instrumentStatus.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("instrumentStatus", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/futures/v1/markets/instruments/unmapped");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = futuresV1MarketsInstrumentsUnmappedProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), futuresV1MarketsInstrumentsUnmappedProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::futuresV1MarketsInstrumentsUnmappedAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool FuturesManager::futuresV1MarketsInstrumentsUnmappedSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return futuresV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

static bool indexV1HistoricalDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1HistoricalDaysHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/historical/days");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1HistoricalDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1HistoricalDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1HistoricalDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::indexV1HistoricalDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexV1HistoricalHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1HistoricalHoursHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/historical/hours");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1HistoricalHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1HistoricalHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1HistoricalHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::indexV1HistoricalHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexV1HistoricalMessagesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1HistoricalMessagesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&afterTs, "int");
	queryParams.insert(pair<string, string>("after_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("after_ts");
	}


	itemAtq = stringify(&lastCcseq, "int");
	queryParams.insert(pair<string, string>("last_ccseq", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("last_ccseq");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/historical/messages");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1HistoricalMessagesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1HistoricalMessagesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1HistoricalMessagesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::indexV1HistoricalMessagesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool indexV1HistoricalMessagesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1HistoricalMessagesHourHelper(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));


	itemAtq = stringify(&hourTs, "int");
	queryParams.insert(pair<string, string>("hour_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("hour_ts");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}


	itemAtq = stringify(&return404OnEmptyResponse, "bool");
	queryParams.insert(pair<string, string>("return_404_on_empty_response", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("return_404_on_empty_response");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/historical/messages/hour");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1HistoricalMessagesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1HistoricalMessagesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1HistoricalMessagesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool FuturesManager::indexV1HistoricalMessagesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool indexV1HistoricalMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1HistoricalMinutesHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}


	itemAtq = stringify(&toTs, "int");
	queryParams.insert(pair<string, string>("to_ts", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("to_ts");
	}


	itemAtq = stringify(&aggregate, "int");
	queryParams.insert(pair<string, string>("aggregate", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("aggregate");
	}


	itemAtq = stringify(&fill, "bool");
	queryParams.insert(pair<string, string>("fill", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("fill");
	}


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/historical/minutes");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1HistoricalMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1HistoricalMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1HistoricalMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool FuturesManager::indexV1HistoricalMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexV1LatestInstrumentMetadataProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1LatestInstrumentMetadataHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/latest/instrument/metadata");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1LatestInstrumentMetadataProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1LatestInstrumentMetadataProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1LatestInstrumentMetadataAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::indexV1LatestInstrumentMetadataSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool indexV1LatestTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1LatestTickHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));

	for (std::list
	<std::string>::iterator queryIter = instruments.begin(); queryIter != instruments.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		queryParams.insert(pair<string, string>("instruments", itemAt));
	}
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	

	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/latest/tick");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1LatestTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1LatestTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1LatestTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool FuturesManager::indexV1LatestTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool indexV1MarketsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1MarketsHelper(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/markets");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1MarketsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1MarketsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1MarketsAsync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsHelper(accessToken,
	market, 
	handler, userData, true);
}

bool FuturesManager::indexV1MarketsSync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsHelper(accessToken,
	market, 
	handler, userData, false);
}

static bool indexV1MarketsInstrumentsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1MarketsInstrumentsHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("instrument");
	}

	for (std::list
	<std::string>::iterator queryIter = instrumentStatus.begin(); queryIter != instrumentStatus.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("instrumentStatus", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/markets/instruments");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1MarketsInstrumentsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1MarketsInstrumentsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1MarketsInstrumentsAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool FuturesManager::indexV1MarketsInstrumentsSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

static bool indexV1MarketsInstrumentsUnmappedProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(GENERIC_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GENERIC_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GENERIC_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GENERIC_RESPONSE", "GENERIC_RESPONSE");
			json_node_free(pJson);

			if ("GENERIC_RESPONSE" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool indexV1MarketsInstrumentsUnmappedHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&market, "std::string");
	queryParams.insert(pair<string, string>("market", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("market");
	}


	itemAtq = stringify(&instrument, "std::string");
	queryParams.insert(pair<string, string>("instrument", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("instrument");
	}

	for (std::list
	<std::string>::iterator queryIter = instrumentStatus.begin(); queryIter != instrumentStatus.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("instrumentStatus", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/index/v1/markets/instruments/unmapped");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexV1MarketsInstrumentsUnmappedProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (FuturesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexV1MarketsInstrumentsUnmappedProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __FuturesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool FuturesManager::indexV1MarketsInstrumentsUnmappedAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool FuturesManager::indexV1MarketsInstrumentsUnmappedSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

