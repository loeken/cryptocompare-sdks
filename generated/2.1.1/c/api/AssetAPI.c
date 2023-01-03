#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "AssetAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Functions for enum SORTBY for AssetAPI_assetV1TopList

static char* assetV1TopList_SORTBY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e SORTBY){
    char *SORTBYArray[] =  { "NULL", "CREATED_ON", "UPDATED_ON", "SYMBOL" };
    return SORTBYArray[SORTBY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e assetV1TopList_SORTBY_FromString(char* SORTBY){
    int stringToReturn = 0;
    char *SORTBYArray[] =  { "NULL", "CREATED_ON", "UPDATED_ON", "SYMBOL" };
    size_t sizeofArray = sizeof(SORTBYArray) / sizeof(SORTBYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTBY, SORTBYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assetV1TopList_SORTBY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assetV1TopList_SORTBY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e SORTBY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sort_by", assetV1TopList_SORTBY_ToString(SORTBY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assetV1TopList_SORTBY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e assetV1TopList_SORTBY_parseFromJSON(cJSON* SORTBYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e SORTBYVariable = 0;
    cJSON *SORTBYVar = cJSON_GetObjectItemCaseSensitive(SORTBYJSON, "sort_by");
    if(!cJSON_IsString(SORTBYVar) || (SORTBYVar->valuestring == NULL))
    {
        goto end;
    }
    SORTBYVariable = assetV1TopList_SORTBY_FromString(SORTBYVar->valuestring);
    return SORTBYVariable;
end:
    return 0;
}
*/

// Functions for enum SORTDIRECTION for AssetAPI_assetV1TopList

static char* assetV1TopList_SORTDIRECTION_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e SORTDIRECTION){
    char *SORTDIRECTIONArray[] =  { "NULL", "DESC", "ASC" };
    return SORTDIRECTIONArray[SORTDIRECTION];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e assetV1TopList_SORTDIRECTION_FromString(char* SORTDIRECTION){
    int stringToReturn = 0;
    char *SORTDIRECTIONArray[] =  { "NULL", "DESC", "ASC" };
    size_t sizeofArray = sizeof(SORTDIRECTIONArray) / sizeof(SORTDIRECTIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTDIRECTION, SORTDIRECTIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assetV1TopList_SORTDIRECTION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assetV1TopList_SORTDIRECTION_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e SORTDIRECTION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sort_direction", assetV1TopList_SORTDIRECTION_ToString(SORTDIRECTION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assetV1TopList_SORTDIRECTION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e assetV1TopList_SORTDIRECTION_parseFromJSON(cJSON* SORTDIRECTIONJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e SORTDIRECTIONVariable = 0;
    cJSON *SORTDIRECTIONVar = cJSON_GetObjectItemCaseSensitive(SORTDIRECTIONJSON, "sort_direction");
    if(!cJSON_IsString(SORTDIRECTIONVar) || (SORTDIRECTIONVar->valuestring == NULL))
    {
        goto end;
    }
    SORTDIRECTIONVariable = assetV1TopList_SORTDIRECTION_FromString(SORTDIRECTIONVar->valuestring);
    return SORTDIRECTIONVariable;
end:
    return 0;
}
*/


generic_response_t*
AssetAPI_assetV1DataByAddress(apiClient_t *apiClient, char * address , char * chain_symbol , char * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/asset/v1/data/by/address")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/asset/v1/data/by/address");




    // query parameters
    char *keyQuery_address = NULL;
    char * valueQuery_address = NULL;
    keyValuePair_t *keyPairQuery_address = 0;
    if (address)
    {
        keyQuery_address = strdup("address");
        valueQuery_address = strdup((address));
        keyPairQuery_address = keyValuePair_create(keyQuery_address, valueQuery_address);
        list_addElement(localVarQueryParameters,keyPairQuery_address);
    }

    // query parameters
    char *keyQuery_chain_symbol = NULL;
    char * valueQuery_chain_symbol = NULL;
    keyValuePair_t *keyPairQuery_chain_symbol = 0;
    if (chain_symbol)
    {
        keyQuery_chain_symbol = strdup("chain_symbol");
        valueQuery_chain_symbol = strdup((chain_symbol));
        keyPairQuery_chain_symbol = keyValuePair_create(keyQuery_chain_symbol, valueQuery_chain_symbol);
        list_addElement(localVarQueryParameters,keyPairQuery_chain_symbol);
    }

    // query parameters
    char *keyQuery_groups = NULL;
    char * valueQuery_groups = NULL;
    keyValuePair_t *keyPairQuery_groups = 0;
    if (groups)
    {
        keyQuery_groups = strdup("groups");
        valueQuery_groups = strdup((groups));
        keyPairQuery_groups = keyValuePair_create(keyQuery_groups, valueQuery_groups);
        list_addElement(localVarQueryParameters,keyPairQuery_groups);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Success response from the API.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","The 400 error occurs when some of the data sent is malformed.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 405) {
    //    printf("%s\n","The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 429) {
    //    printf("%s\n","The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 502) {
    //    printf("%s\n","The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 503) {
    //    printf("%s\n","The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.");
    //}
    //nonprimitive not container
    cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(AssetAPIlocalVarJSON);
    cJSON_Delete(AssetAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_address){
        free(keyQuery_address);
        keyQuery_address = NULL;
    }
    if(valueQuery_address){
        free(valueQuery_address);
        valueQuery_address = NULL;
    }
    if(keyPairQuery_address){
        keyValuePair_free(keyPairQuery_address);
        keyPairQuery_address = NULL;
    }
    if(keyQuery_chain_symbol){
        free(keyQuery_chain_symbol);
        keyQuery_chain_symbol = NULL;
    }
    if(valueQuery_chain_symbol){
        free(valueQuery_chain_symbol);
        valueQuery_chain_symbol = NULL;
    }
    if(keyPairQuery_chain_symbol){
        keyValuePair_free(keyPairQuery_chain_symbol);
        keyPairQuery_chain_symbol = NULL;
    }
    if(keyQuery_groups){
        free(keyQuery_groups);
        keyQuery_groups = NULL;
    }
    if(valueQuery_groups){
        free(valueQuery_groups);
        valueQuery_groups = NULL;
    }
    if(keyPairQuery_groups){
        keyValuePair_free(keyPairQuery_groups);
        keyPairQuery_groups = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
AssetAPI_assetV1DataById(apiClient_t *apiClient, int asset_id , char * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/asset/v1/data/by/id")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/asset/v1/data/by/id");




    // query parameters
    char *keyQuery_asset_id = NULL;
    char * valueQuery_asset_id = NULL;
    keyValuePair_t *keyPairQuery_asset_id = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_asset_id = strdup("asset_id");
        valueQuery_asset_id = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_asset_id, MAX_NUMBER_LENGTH, "%d", asset_id);
        keyPairQuery_asset_id = keyValuePair_create(keyQuery_asset_id, valueQuery_asset_id);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_id);
    }

    // query parameters
    char *keyQuery_groups = NULL;
    char * valueQuery_groups = NULL;
    keyValuePair_t *keyPairQuery_groups = 0;
    if (groups)
    {
        keyQuery_groups = strdup("groups");
        valueQuery_groups = strdup((groups));
        keyPairQuery_groups = keyValuePair_create(keyQuery_groups, valueQuery_groups);
        list_addElement(localVarQueryParameters,keyPairQuery_groups);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Success response from the API.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","The 400 error occurs when some of the data sent is malformed.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 405) {
    //    printf("%s\n","The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 429) {
    //    printf("%s\n","The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 502) {
    //    printf("%s\n","The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 503) {
    //    printf("%s\n","The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.");
    //}
    //nonprimitive not container
    cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(AssetAPIlocalVarJSON);
    cJSON_Delete(AssetAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_asset_id){
        free(keyQuery_asset_id);
        keyQuery_asset_id = NULL;
    }
    if(valueQuery_asset_id){
        free(valueQuery_asset_id);
        valueQuery_asset_id = NULL;
    }
    if(keyPairQuery_asset_id){
        keyValuePair_free(keyPairQuery_asset_id);
        keyPairQuery_asset_id = NULL;
    }
    if(keyQuery_groups){
        free(keyQuery_groups);
        keyQuery_groups = NULL;
    }
    if(valueQuery_groups){
        free(valueQuery_groups);
        valueQuery_groups = NULL;
    }
    if(keyPairQuery_groups){
        keyValuePair_free(keyPairQuery_groups);
        keyPairQuery_groups = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
AssetAPI_assetV1DataBySymbol(apiClient_t *apiClient, char * asset_symbol , char * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/asset/v1/data/by/symbol")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/asset/v1/data/by/symbol");




    // query parameters
    char *keyQuery_asset_symbol = NULL;
    char * valueQuery_asset_symbol = NULL;
    keyValuePair_t *keyPairQuery_asset_symbol = 0;
    if (asset_symbol)
    {
        keyQuery_asset_symbol = strdup("asset_symbol");
        valueQuery_asset_symbol = strdup((asset_symbol));
        keyPairQuery_asset_symbol = keyValuePair_create(keyQuery_asset_symbol, valueQuery_asset_symbol);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_symbol);
    }

    // query parameters
    char *keyQuery_groups = NULL;
    char * valueQuery_groups = NULL;
    keyValuePair_t *keyPairQuery_groups = 0;
    if (groups)
    {
        keyQuery_groups = strdup("groups");
        valueQuery_groups = strdup((groups));
        keyPairQuery_groups = keyValuePair_create(keyQuery_groups, valueQuery_groups);
        list_addElement(localVarQueryParameters,keyPairQuery_groups);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Success response from the API.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","The 400 error occurs when some of the data sent is malformed.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 405) {
    //    printf("%s\n","The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 429) {
    //    printf("%s\n","The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 502) {
    //    printf("%s\n","The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 503) {
    //    printf("%s\n","The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.");
    //}
    //nonprimitive not container
    cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(AssetAPIlocalVarJSON);
    cJSON_Delete(AssetAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_asset_symbol){
        free(keyQuery_asset_symbol);
        keyQuery_asset_symbol = NULL;
    }
    if(valueQuery_asset_symbol){
        free(valueQuery_asset_symbol);
        valueQuery_asset_symbol = NULL;
    }
    if(keyPairQuery_asset_symbol){
        keyValuePair_free(keyPairQuery_asset_symbol);
        keyPairQuery_asset_symbol = NULL;
    }
    if(keyQuery_groups){
        free(keyQuery_groups);
        keyQuery_groups = NULL;
    }
    if(valueQuery_groups){
        free(valueQuery_groups);
        valueQuery_groups = NULL;
    }
    if(keyPairQuery_groups){
        keyValuePair_free(keyPairQuery_groups);
        keyPairQuery_groups = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
AssetAPI_assetV1TopList(apiClient_t *apiClient, int page , int page_size , char * asset_type , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e sort_by , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e sort_direction , char * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/asset/v1/top/list")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/asset/v1/top/list");




    // query parameters
    char *keyQuery_page = NULL;
    char * valueQuery_page = NULL;
    keyValuePair_t *keyPairQuery_page = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_page = strdup("page");
        valueQuery_page = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_page, MAX_NUMBER_LENGTH, "%d", page);
        keyPairQuery_page = keyValuePair_create(keyQuery_page, valueQuery_page);
        list_addElement(localVarQueryParameters,keyPairQuery_page);
    }

    // query parameters
    char *keyQuery_page_size = NULL;
    char * valueQuery_page_size = NULL;
    keyValuePair_t *keyPairQuery_page_size = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_page_size = strdup("page_size");
        valueQuery_page_size = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_page_size, MAX_NUMBER_LENGTH, "%d", page_size);
        keyPairQuery_page_size = keyValuePair_create(keyQuery_page_size, valueQuery_page_size);
        list_addElement(localVarQueryParameters,keyPairQuery_page_size);
    }

    // query parameters
    char *keyQuery_asset_type = NULL;
    char * valueQuery_asset_type = NULL;
    keyValuePair_t *keyPairQuery_asset_type = 0;
    if (asset_type)
    {
        keyQuery_asset_type = strdup("asset_type");
        valueQuery_asset_type = strdup((asset_type));
        keyPairQuery_asset_type = keyValuePair_create(keyQuery_asset_type, valueQuery_asset_type);
        list_addElement(localVarQueryParameters,keyPairQuery_asset_type);
    }

    // query parameters
    char *keyQuery_sort_by = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e valueQuery_sort_by ;
    keyValuePair_t *keyPairQuery_sort_by = 0;
    if (sort_by)
    {
        keyQuery_sort_by = strdup("sort_by");
        valueQuery_sort_by = (sort_by);
        keyPairQuery_sort_by = keyValuePair_create(keyQuery_sort_by, (void *)strdup(assetV1TopList_SORTBY_ToString(
		valueQuery_sort_by)));
        list_addElement(localVarQueryParameters,keyPairQuery_sort_by);
    }

    // query parameters
    char *keyQuery_sort_direction = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e valueQuery_sort_direction ;
    keyValuePair_t *keyPairQuery_sort_direction = 0;
    if (sort_direction)
    {
        keyQuery_sort_direction = strdup("sort_direction");
        valueQuery_sort_direction = (sort_direction);
        keyPairQuery_sort_direction = keyValuePair_create(keyQuery_sort_direction, (void *)strdup(assetV1TopList_SORTDIRECTION_ToString(
		valueQuery_sort_direction)));
        list_addElement(localVarQueryParameters,keyPairQuery_sort_direction);
    }

    // query parameters
    char *keyQuery_groups = NULL;
    char * valueQuery_groups = NULL;
    keyValuePair_t *keyPairQuery_groups = 0;
    if (groups)
    {
        keyQuery_groups = strdup("groups");
        valueQuery_groups = strdup((groups));
        keyPairQuery_groups = keyValuePair_create(keyQuery_groups, valueQuery_groups);
        list_addElement(localVarQueryParameters,keyPairQuery_groups);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Success response from the API.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 400) {
    //    printf("%s\n","The 400 error occurs when some of the data sent is malformed.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 403) {
    //    printf("%s\n","The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 404) {
    //    printf("%s\n","The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 405) {
    //    printf("%s\n","The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 429) {
    //    printf("%s\n","The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 500) {
    //    printf("%s\n","The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 502) {
    //    printf("%s\n","The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 503) {
    //    printf("%s\n","The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.");
    //}
    //nonprimitive not container
    cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(AssetAPIlocalVarJSON);
    cJSON_Delete(AssetAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_page){
        free(keyQuery_page);
        keyQuery_page = NULL;
    }
    if(valueQuery_page){
        free(valueQuery_page);
        valueQuery_page = NULL;
    }
    if(keyPairQuery_page){
        keyValuePair_free(keyPairQuery_page);
        keyPairQuery_page = NULL;
    }
    if(keyQuery_page_size){
        free(keyQuery_page_size);
        keyQuery_page_size = NULL;
    }
    if(valueQuery_page_size){
        free(valueQuery_page_size);
        valueQuery_page_size = NULL;
    }
    if(keyPairQuery_page_size){
        keyValuePair_free(keyPairQuery_page_size);
        keyPairQuery_page_size = NULL;
    }
    if(keyQuery_asset_type){
        free(keyQuery_asset_type);
        keyQuery_asset_type = NULL;
    }
    if(valueQuery_asset_type){
        free(valueQuery_asset_type);
        valueQuery_asset_type = NULL;
    }
    if(keyPairQuery_asset_type){
        keyValuePair_free(keyPairQuery_asset_type);
        keyPairQuery_asset_type = NULL;
    }
    if(keyQuery_sort_by){
        free(keyQuery_sort_by);
        keyQuery_sort_by = NULL;
    }
    if(keyPairQuery_sort_by){
        keyValuePair_free(keyPairQuery_sort_by);
        keyPairQuery_sort_by = NULL;
    }
    if(keyQuery_sort_direction){
        free(keyQuery_sort_direction);
        keyQuery_sort_direction = NULL;
    }
    if(keyPairQuery_sort_direction){
        keyValuePair_free(keyPairQuery_sort_direction);
        keyPairQuery_sort_direction = NULL;
    }
    if(keyQuery_groups){
        free(keyQuery_groups);
        keyQuery_groups = NULL;
    }
    if(valueQuery_groups){
        free(valueQuery_groups);
        valueQuery_groups = NULL;
    }
    if(keyPairQuery_groups){
        keyValuePair_free(keyPairQuery_groups);
        keyPairQuery_groups = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

