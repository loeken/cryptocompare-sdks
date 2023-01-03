#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "AssetManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


AssetManager::AssetManager()
{

}

AssetManager::~AssetManager()
{

}

static gboolean __AssetManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __AssetManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__AssetManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool assetV1DataByAddressProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool assetV1DataByAddressHelper(char * accessToken,
	std::string address, std::string chainSymbol, std::string groups, 
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
	

	itemAtq = stringify(&address, "std::string");
	queryParams.insert(pair<string, string>("address", itemAtq));


	itemAtq = stringify(&chainSymbol, "std::string");
	queryParams.insert(pair<string, string>("chain_symbol", itemAtq));


	itemAtq = stringify(&groups, "std::string");
	queryParams.insert(pair<string, string>("groups", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("groups");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/asset/v1/data/by/address");
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
		NetClient::easycurl(AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = assetV1DataByAddressProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), assetV1DataByAddressProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AssetManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AssetManager::assetV1DataByAddressAsync(char * accessToken,
	std::string address, std::string chainSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataByAddressHelper(accessToken,
	address, chainSymbol, groups, 
	handler, userData, true);
}

bool AssetManager::assetV1DataByAddressSync(char * accessToken,
	std::string address, std::string chainSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataByAddressHelper(accessToken,
	address, chainSymbol, groups, 
	handler, userData, false);
}

static bool assetV1DataByIdProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool assetV1DataByIdHelper(char * accessToken,
	int assetId, std::string groups, 
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
	

	itemAtq = stringify(&assetId, "int");
	queryParams.insert(pair<string, string>("asset_id", itemAtq));


	itemAtq = stringify(&groups, "std::string");
	queryParams.insert(pair<string, string>("groups", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("groups");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/asset/v1/data/by/id");
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
		NetClient::easycurl(AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = assetV1DataByIdProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), assetV1DataByIdProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AssetManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AssetManager::assetV1DataByIdAsync(char * accessToken,
	int assetId, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataByIdHelper(accessToken,
	assetId, groups, 
	handler, userData, true);
}

bool AssetManager::assetV1DataByIdSync(char * accessToken,
	int assetId, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataByIdHelper(accessToken,
	assetId, groups, 
	handler, userData, false);
}

static bool assetV1DataBySymbolProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool assetV1DataBySymbolHelper(char * accessToken,
	std::string assetSymbol, std::string groups, 
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
	

	itemAtq = stringify(&assetSymbol, "std::string");
	queryParams.insert(pair<string, string>("asset_symbol", itemAtq));


	itemAtq = stringify(&groups, "std::string");
	queryParams.insert(pair<string, string>("groups", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("groups");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/asset/v1/data/by/symbol");
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
		NetClient::easycurl(AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = assetV1DataBySymbolProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), assetV1DataBySymbolProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AssetManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AssetManager::assetV1DataBySymbolAsync(char * accessToken,
	std::string assetSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataBySymbolHelper(accessToken,
	assetSymbol, groups, 
	handler, userData, true);
}

bool AssetManager::assetV1DataBySymbolSync(char * accessToken,
	std::string assetSymbol, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1DataBySymbolHelper(accessToken,
	assetSymbol, groups, 
	handler, userData, false);
}

static bool assetV1TopListProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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

static bool assetV1TopListHelper(char * accessToken,
	int page, int pageSize, std::string assetType, std::string sortBy, std::string sortDirection, std::string groups, 
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
	

	itemAtq = stringify(&page, "int");
	queryParams.insert(pair<string, string>("page", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("page");
	}


	itemAtq = stringify(&pageSize, "int");
	queryParams.insert(pair<string, string>("page_size", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("page_size");
	}


	itemAtq = stringify(&assetType, "std::string");
	queryParams.insert(pair<string, string>("asset_type", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("asset_type");
	}


	itemAtq = stringify(&sortBy, "std::string");
	queryParams.insert(pair<string, string>("sort_by", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sort_by");
	}


	itemAtq = stringify(&sortDirection, "std::string");
	queryParams.insert(pair<string, string>("sort_direction", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("sort_direction");
	}


	itemAtq = stringify(&groups, "std::string");
	queryParams.insert(pair<string, string>("groups", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("groups");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/asset/v1/top/list");
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
		NetClient::easycurl(AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = assetV1TopListProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (AssetManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), assetV1TopListProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __AssetManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool AssetManager::assetV1TopListAsync(char * accessToken,
	int page, int pageSize, std::string assetType, std::string sortBy, std::string sortDirection, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1TopListHelper(accessToken,
	page, pageSize, assetType, sortBy, sortDirection, groups, 
	handler, userData, true);
}

bool AssetManager::assetV1TopListSync(char * accessToken,
	int page, int pageSize, std::string assetType, std::string sortBy, std::string sortDirection, std::string groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData)
{
	return assetV1TopListHelper(accessToken,
	page, pageSize, assetType, sortBy, sortDirection, groups, 
	handler, userData, false);
}

