#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "SpotManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


SpotManager::SpotManager()
{

}

SpotManager::~SpotManager()
{

}

static gboolean __SpotManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __SpotManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__SpotManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool spotV1HistoricalDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_HISTO_DATA_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE", "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE" == "std::string") {
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

static bool spotV1HistoricalDaysHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
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

	string url("/spot/v1/historical/days");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalDaysAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalDaysSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalDaysHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool spotV1HistoricalHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_HISTO_DATA_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE", "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE" == "std::string") {
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

static bool spotV1HistoricalHoursHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
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

	string url("/spot/v1/historical/hours");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalHoursAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalHoursSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalHoursHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool spotV1HistoricalMinutesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_HISTO_DATA_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE", "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_HISTO_DATA_RESPONSE" == "std::string") {
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

static bool spotV1HistoricalMinutesHelper(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
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

	string url("/spot/v1/historical/minutes");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalMinutesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalMinutesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalMinutesAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalMinutesSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(SPOT_INSTRUMENT_HISTO_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalMinutesHelper(accessToken,
	market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool spotV1HistoricalOrderbookL2SnapshotMinuteProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool spotV1HistoricalOrderbookL2SnapshotMinuteHelper(char * accessToken,
	std::string market, std::string instrument, int minuteTs, int depth, std::string mappingPriority, std::string responseFormat, 
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


	itemAtq = stringify(&minuteTs, "int");
	queryParams.insert(pair<string, string>("minute_ts", itemAtq));


	itemAtq = stringify(&depth, "int");
	queryParams.insert(pair<string, string>("depth", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("depth");
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

	string url("/spot/v1/historical/orderbook/l2/snapshot/minute");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalOrderbookL2SnapshotMinuteProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalOrderbookL2SnapshotMinuteProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalOrderbookL2SnapshotMinuteAsync(char * accessToken,
	std::string market, std::string instrument, int minuteTs, int depth, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalOrderbookL2SnapshotMinuteHelper(accessToken,
	market, instrument, minuteTs, depth, mappingPriority, responseFormat, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalOrderbookL2SnapshotMinuteSync(char * accessToken,
	std::string market, std::string instrument, int minuteTs, int depth, std::string mappingPriority, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalOrderbookL2SnapshotMinuteHelper(accessToken,
	market, instrument, minuteTs, depth, mappingPriority, responseFormat, 
	handler, userData, false);
}

static bool spotV1HistoricalTradesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_TRADE_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_TRADE_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_TRADE_RESPONSE", "SPOT_INSTRUMENT_TRADE_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_TRADE_RESPONSE" == "std::string") {
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

static bool spotV1HistoricalTradesHelper(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
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

	string url("/spot/v1/historical/trades");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalTradesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalTradesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalTradesAsync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalTradesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalTradesSync(char * accessToken,
	std::string market, std::string instrument, int afterTs, int lastCcseq, int limit, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalTradesHelper(accessToken,
	market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool spotV1HistoricalTradesHourProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_TRADE_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_TRADE_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_TRADE_RESPONSE", "SPOT_INSTRUMENT_TRADE_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_TRADE_RESPONSE" == "std::string") {
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

static bool spotV1HistoricalTradesHourHelper(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
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

	string url("/spot/v1/historical/trades/hour");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1HistoricalTradesHourProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1HistoricalTradesHourProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1HistoricalTradesHourAsync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalTradesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, true);
}

bool SpotManager::spotV1HistoricalTradesHourSync(char * accessToken,
	std::string market, std::string instrument, int hourTs, std::string mappingPriority, std::string responseFormat, bool return404OnEmptyResponse, 
	void(* handler)(SPOT_INSTRUMENT_TRADE_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1HistoricalTradesHourHelper(accessToken,
	market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, 
	handler, userData, false);
}

static bool spotV1LatestInstrumentMetadataProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_METADATA_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_METADATA_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_METADATA_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_METADATA_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_METADATA_RESPONSE", "SPOT_INSTRUMENT_METADATA_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_METADATA_RESPONSE" == "std::string") {
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

static bool spotV1LatestInstrumentMetadataHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_METADATA_RESPONSE, Error, void* )
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

	string url("/spot/v1/latest/instrument/metadata");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1LatestInstrumentMetadataProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1LatestInstrumentMetadataProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1LatestInstrumentMetadataAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_METADATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool SpotManager::spotV1LatestInstrumentMetadataSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_METADATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1LatestInstrumentMetadataHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool spotV1LatestTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE, Error, void* )
	= reinterpret_cast<void(*)(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	SPOT_INSTRUMENT_MARKET_DATA_RESPONSE out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("SPOT_INSTRUMENT_MARKET_DATA_RESPONSE")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE", "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE");
			json_node_free(pJson);

			if ("SPOT_INSTRUMENT_MARKET_DATA_RESPONSE" == "std::string") {
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

static bool spotV1LatestTickHelper(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE, Error, void* )
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

	string url("/spot/v1/latest/tick");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1LatestTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1LatestTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1LatestTickAsync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, true);
}

bool SpotManager::spotV1LatestTickSync(char * accessToken,
	std::string market, std::list<std::string> instruments, std::list<std::string> groups, std::string mappingPriority, 
	void(* handler)(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1LatestTickHelper(accessToken,
	market, instruments, groups, mappingPriority, 
	handler, userData, false);
}

static bool spotV1MarketsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool spotV1MarketsHelper(char * accessToken,
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

	string url("/spot/v1/markets");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1MarketsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1MarketsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1MarketsAsync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsHelper(accessToken,
	market, 
	handler, userData, true);
}

bool SpotManager::spotV1MarketsSync(char * accessToken,
	std::string market, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsHelper(accessToken,
	market, 
	handler, userData, false);
}

static bool spotV1MarketsInstrumentsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool spotV1MarketsInstrumentsHelper(char * accessToken,
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

	string url("/spot/v1/markets/instruments");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1MarketsInstrumentsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1MarketsInstrumentsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1MarketsInstrumentsAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool SpotManager::spotV1MarketsInstrumentsSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsInstrumentsHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

static bool spotV1MarketsInstrumentsUnmappedProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool spotV1MarketsInstrumentsUnmappedHelper(char * accessToken,
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

	string url("/spot/v1/markets/instruments/unmapped");
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
		NetClient::easycurl(SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = spotV1MarketsInstrumentsUnmappedProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (SpotManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), spotV1MarketsInstrumentsUnmappedProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __SpotManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool SpotManager::spotV1MarketsInstrumentsUnmappedAsync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, true);
}

bool SpotManager::spotV1MarketsInstrumentsUnmappedSync(char * accessToken,
	std::string market, std::string instrument, std::list<std::string> instrumentStatus, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return spotV1MarketsInstrumentsUnmappedHelper(accessToken,
	market, instrument, instrumentStatus, 
	handler, userData, false);
}

