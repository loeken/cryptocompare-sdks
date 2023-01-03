#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OverviewManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OverviewManager::OverviewManager()
{

}

OverviewManager::~OverviewManager()
{

}

static gboolean __OverviewManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OverviewManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OverviewManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool overviewV1HistoricalMarketcapAllAssetsDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1HistoricalMarketcapAllAssetsDaysHelper(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
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


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/historical/marketcap/all/assets/days");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1HistoricalMarketcapAllAssetsDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1HistoricalMarketcapAllAssetsDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1HistoricalMarketcapAllAssetsDaysAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapAllAssetsDaysHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, true);
}

bool OverviewManager::overviewV1HistoricalMarketcapAllAssetsDaysSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapAllAssetsDaysHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, false);
}

static bool overviewV1HistoricalMarketcapAllAssetsHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1HistoricalMarketcapAllAssetsHoursHelper(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
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


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/historical/marketcap/all/assets/hours");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1HistoricalMarketcapAllAssetsHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1HistoricalMarketcapAllAssetsHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1HistoricalMarketcapAllAssetsHoursAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapAllAssetsHoursHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, true);
}

bool OverviewManager::overviewV1HistoricalMarketcapAllAssetsHoursSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapAllAssetsHoursHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, false);
}

static bool overviewV1HistoricalMarketcapFtwAssetsDaysProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1HistoricalMarketcapFtwAssetsDaysHelper(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
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


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/historical/marketcap/ftw/assets/days");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1HistoricalMarketcapFtwAssetsDaysProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1HistoricalMarketcapFtwAssetsDaysProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1HistoricalMarketcapFtwAssetsDaysAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapFtwAssetsDaysHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, true);
}

bool OverviewManager::overviewV1HistoricalMarketcapFtwAssetsDaysSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapFtwAssetsDaysHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, false);
}

static bool overviewV1HistoricalMarketcapFtwAssetsHoursProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1HistoricalMarketcapFtwAssetsHoursHelper(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
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


	itemAtq = stringify(&responseFormat, "std::string");
	queryParams.insert(pair<string, string>("response_format", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("response_format");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/historical/marketcap/ftw/assets/hours");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1HistoricalMarketcapFtwAssetsHoursProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1HistoricalMarketcapFtwAssetsHoursProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1HistoricalMarketcapFtwAssetsHoursAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapFtwAssetsHoursHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, true);
}

bool OverviewManager::overviewV1HistoricalMarketcapFtwAssetsHoursSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1HistoricalMarketcapFtwAssetsHoursHelper(accessToken,
	groups, limit, toTs, aggregate, fill, responseFormat, 
	handler, userData, false);
}

static bool overviewV1LatestMarketcapAllTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1LatestMarketcapAllTickHelper(char * accessToken,
	std::list<std::string> groups, 
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
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/latest/marketcap/all/tick");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1LatestMarketcapAllTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1LatestMarketcapAllTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1LatestMarketcapAllTickAsync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1LatestMarketcapAllTickHelper(accessToken,
	groups, 
	handler, userData, true);
}

bool OverviewManager::overviewV1LatestMarketcapAllTickSync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1LatestMarketcapAllTickHelper(accessToken,
	groups, 
	handler, userData, false);
}

static bool overviewV1LatestMarketcapFtwTickProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool overviewV1LatestMarketcapFtwTickHelper(char * accessToken,
	std::list<std::string> groups, 
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
	
	for (std::list
	<std::string>::iterator queryIter = groups.begin(); queryIter != groups.end(); ++queryIter) {
		string itemAt = stringify(&(*queryIter), "std::string");
		if( itemAt.empty()){
			continue;
		}
		queryParams.insert(pair<string, string>("groups", itemAt));
	}
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/overview/v1/latest/marketcap/ftw/tick");
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
		NetClient::easycurl(OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = overviewV1LatestMarketcapFtwTickProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (OverviewManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), overviewV1LatestMarketcapFtwTickProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OverviewManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OverviewManager::overviewV1LatestMarketcapFtwTickAsync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1LatestMarketcapFtwTickHelper(accessToken,
	groups, 
	handler, userData, true);
}

bool OverviewManager::overviewV1LatestMarketcapFtwTickSync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return overviewV1LatestMarketcapFtwTickHelper(accessToken,
	groups, 
	handler, userData, false);
}

