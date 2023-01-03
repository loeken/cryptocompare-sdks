#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "ReferenceRatesManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


ReferenceRatesManager::ReferenceRatesManager()
{

}

ReferenceRatesManager::~ReferenceRatesManager()
{

}

static gboolean __ReferenceRatesManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __ReferenceRatesManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__ReferenceRatesManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool indexCcV1HistoricalDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1HistoricalDaysHelper(char * accessToken,
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

	string url("/index/cc/v1/historical/days");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1HistoricalDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1HistoricalDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1HistoricalDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1HistoricalDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexCcV1HistoricalHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1HistoricalHoursHelper(char * accessToken,
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

	string url("/index/cc/v1/historical/hours");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1HistoricalHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1HistoricalHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1HistoricalHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1HistoricalHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexCcV1HistoricalMessagesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1HistoricalMessagesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, std::string mappingPriority, int limit, std::string responseFormat, bool return404OnEmptyResponse, 
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


	itemAtq = stringify(&mappingPriority, "std::string");
	queryParams.insert(pair<string, string>("mapping_priority", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mapping_priority");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
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

	string url("/index/cc/v1/historical/messages");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1HistoricalMessagesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1HistoricalMessagesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1HistoricalMessagesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, std::string mappingPriority, int limit, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1HistoricalMessagesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, std::string mappingPriority, int limit, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMessagesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool indexCcV1HistoricalMessagesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1HistoricalMessagesHourHelper(char * accessToken,
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

	string url("/index/cc/v1/historical/messages/hour");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1HistoricalMessagesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1HistoricalMessagesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1HistoricalMessagesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1HistoricalMessagesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMessagesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool indexCcV1HistoricalMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1HistoricalMinutesHelper(char * accessToken,
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

	string url("/index/cc/v1/historical/minutes");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1HistoricalMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1HistoricalMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1HistoricalMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1HistoricalMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool indexCcV1LatestInstrumentMetadataProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1LatestInstrumentMetadataHelper(char * accessToken,
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

	string url("/index/cc/v1/latest/instrument/metadata");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1LatestInstrumentMetadataProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1LatestInstrumentMetadataProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1LatestInstrumentMetadataAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1LatestInstrumentMetadataSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool indexCcV1LatestTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1LatestTickHelper(char * accessToken,
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

	string url("/index/cc/v1/latest/tick");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1LatestTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1LatestTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1LatestTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1LatestTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool indexCcV1MarketsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1MarketsHelper(char * accessToken,
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

	string url("/index/cc/v1/markets");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1MarketsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1MarketsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1MarketsAsync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsHelper(accessToken,
	market, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1MarketsSync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsHelper(accessToken,
	market, 
	handler, userData, false);
}

static bool indexCcV1MarketsInstrumentsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1MarketsInstrumentsHelper(char * accessToken,
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

	string url("/index/cc/v1/markets/instruments");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1MarketsInstrumentsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1MarketsInstrumentsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1MarketsInstrumentsAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1MarketsInstrumentsSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

static bool indexCcV1MarketsInstrumentsUnmappedProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool indexCcV1MarketsInstrumentsUnmappedHelper(char * accessToken,
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

	string url("/index/cc/v1/markets/instruments/unmapped");
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
		NetClient::easycurl(ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = indexCcV1MarketsInstrumentsUnmappedProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (ReferenceRatesManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), indexCcV1MarketsInstrumentsUnmappedProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __ReferenceRatesManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool ReferenceRatesManager::indexCcV1MarketsInstrumentsUnmappedAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool ReferenceRatesManager::indexCcV1MarketsInstrumentsUnmappedSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return indexCcV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

