#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "OverviewAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Functions for enum RESPONSEFORMAT for OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays

static char* overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours

static char* overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays

static char* overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours

static char* overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/


generic_response_t*
OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays(apiClient_t *apiClient, list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/historical/marketcap/all/assets/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/historical/marketcap/all/assets/days");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_to_ts = NULL;
    char * valueQuery_to_ts = NULL;
    keyValuePair_t *keyPairQuery_to_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_to_ts = strdup("to_ts");
        valueQuery_to_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_to_ts, MAX_NUMBER_LENGTH, "%d", to_ts);
        keyPairQuery_to_ts = keyValuePair_create(keyQuery_to_ts, valueQuery_to_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_to_ts);
    }

    // query parameters
    char *keyQuery_aggregate = NULL;
    char * valueQuery_aggregate = NULL;
    keyValuePair_t *keyPairQuery_aggregate = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_aggregate = strdup("aggregate");
        valueQuery_aggregate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_aggregate, MAX_NUMBER_LENGTH, "%d", aggregate);
        keyPairQuery_aggregate = keyValuePair_create(keyQuery_aggregate, valueQuery_aggregate);
        list_addElement(localVarQueryParameters,keyPairQuery_aggregate);
    }

    // query parameters
    char *keyQuery_fill = NULL;
    char * valueQuery_fill = NULL;
    keyValuePair_t *keyPairQuery_fill = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_fill = strdup("fill");
        valueQuery_fill = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fill, MAX_NUMBER_LENGTH, "%d", fill);
        keyPairQuery_fill = keyValuePair_create(keyQuery_fill, valueQuery_fill);
        list_addElement(localVarQueryParameters,keyPairQuery_fill);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(overviewV1HistoricalMarketcapAllAssetsDays_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_to_ts){
        free(keyQuery_to_ts);
        keyQuery_to_ts = NULL;
    }
    if(valueQuery_to_ts){
        free(valueQuery_to_ts);
        valueQuery_to_ts = NULL;
    }
    if(keyPairQuery_to_ts){
        keyValuePair_free(keyPairQuery_to_ts);
        keyPairQuery_to_ts = NULL;
    }
    if(keyQuery_aggregate){
        free(keyQuery_aggregate);
        keyQuery_aggregate = NULL;
    }
    if(valueQuery_aggregate){
        free(valueQuery_aggregate);
        valueQuery_aggregate = NULL;
    }
    if(keyPairQuery_aggregate){
        keyValuePair_free(keyPairQuery_aggregate);
        keyPairQuery_aggregate = NULL;
    }
    if(keyQuery_fill){
        free(keyQuery_fill);
        keyQuery_fill = NULL;
    }
    if(valueQuery_fill){
        free(valueQuery_fill);
        valueQuery_fill = NULL;
    }
    if(keyPairQuery_fill){
        keyValuePair_free(keyPairQuery_fill);
        keyPairQuery_fill = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours(apiClient_t *apiClient, list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/historical/marketcap/all/assets/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/historical/marketcap/all/assets/hours");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_to_ts = NULL;
    char * valueQuery_to_ts = NULL;
    keyValuePair_t *keyPairQuery_to_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_to_ts = strdup("to_ts");
        valueQuery_to_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_to_ts, MAX_NUMBER_LENGTH, "%d", to_ts);
        keyPairQuery_to_ts = keyValuePair_create(keyQuery_to_ts, valueQuery_to_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_to_ts);
    }

    // query parameters
    char *keyQuery_aggregate = NULL;
    char * valueQuery_aggregate = NULL;
    keyValuePair_t *keyPairQuery_aggregate = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_aggregate = strdup("aggregate");
        valueQuery_aggregate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_aggregate, MAX_NUMBER_LENGTH, "%d", aggregate);
        keyPairQuery_aggregate = keyValuePair_create(keyQuery_aggregate, valueQuery_aggregate);
        list_addElement(localVarQueryParameters,keyPairQuery_aggregate);
    }

    // query parameters
    char *keyQuery_fill = NULL;
    char * valueQuery_fill = NULL;
    keyValuePair_t *keyPairQuery_fill = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_fill = strdup("fill");
        valueQuery_fill = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fill, MAX_NUMBER_LENGTH, "%d", fill);
        keyPairQuery_fill = keyValuePair_create(keyQuery_fill, valueQuery_fill);
        list_addElement(localVarQueryParameters,keyPairQuery_fill);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(overviewV1HistoricalMarketcapAllAssetsHours_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_to_ts){
        free(keyQuery_to_ts);
        keyQuery_to_ts = NULL;
    }
    if(valueQuery_to_ts){
        free(valueQuery_to_ts);
        valueQuery_to_ts = NULL;
    }
    if(keyPairQuery_to_ts){
        keyValuePair_free(keyPairQuery_to_ts);
        keyPairQuery_to_ts = NULL;
    }
    if(keyQuery_aggregate){
        free(keyQuery_aggregate);
        keyQuery_aggregate = NULL;
    }
    if(valueQuery_aggregate){
        free(valueQuery_aggregate);
        valueQuery_aggregate = NULL;
    }
    if(keyPairQuery_aggregate){
        keyValuePair_free(keyPairQuery_aggregate);
        keyPairQuery_aggregate = NULL;
    }
    if(keyQuery_fill){
        free(keyQuery_fill);
        keyQuery_fill = NULL;
    }
    if(valueQuery_fill){
        free(valueQuery_fill);
        valueQuery_fill = NULL;
    }
    if(keyPairQuery_fill){
        keyValuePair_free(keyPairQuery_fill);
        keyPairQuery_fill = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays(apiClient_t *apiClient, list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/historical/marketcap/ftw/assets/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/historical/marketcap/ftw/assets/days");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_to_ts = NULL;
    char * valueQuery_to_ts = NULL;
    keyValuePair_t *keyPairQuery_to_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_to_ts = strdup("to_ts");
        valueQuery_to_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_to_ts, MAX_NUMBER_LENGTH, "%d", to_ts);
        keyPairQuery_to_ts = keyValuePair_create(keyQuery_to_ts, valueQuery_to_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_to_ts);
    }

    // query parameters
    char *keyQuery_aggregate = NULL;
    char * valueQuery_aggregate = NULL;
    keyValuePair_t *keyPairQuery_aggregate = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_aggregate = strdup("aggregate");
        valueQuery_aggregate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_aggregate, MAX_NUMBER_LENGTH, "%d", aggregate);
        keyPairQuery_aggregate = keyValuePair_create(keyQuery_aggregate, valueQuery_aggregate);
        list_addElement(localVarQueryParameters,keyPairQuery_aggregate);
    }

    // query parameters
    char *keyQuery_fill = NULL;
    char * valueQuery_fill = NULL;
    keyValuePair_t *keyPairQuery_fill = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_fill = strdup("fill");
        valueQuery_fill = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fill, MAX_NUMBER_LENGTH, "%d", fill);
        keyPairQuery_fill = keyValuePair_create(keyQuery_fill, valueQuery_fill);
        list_addElement(localVarQueryParameters,keyPairQuery_fill);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(overviewV1HistoricalMarketcapFtwAssetsDays_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_to_ts){
        free(keyQuery_to_ts);
        keyQuery_to_ts = NULL;
    }
    if(valueQuery_to_ts){
        free(valueQuery_to_ts);
        valueQuery_to_ts = NULL;
    }
    if(keyPairQuery_to_ts){
        keyValuePair_free(keyPairQuery_to_ts);
        keyPairQuery_to_ts = NULL;
    }
    if(keyQuery_aggregate){
        free(keyQuery_aggregate);
        keyQuery_aggregate = NULL;
    }
    if(valueQuery_aggregate){
        free(valueQuery_aggregate);
        valueQuery_aggregate = NULL;
    }
    if(keyPairQuery_aggregate){
        keyValuePair_free(keyPairQuery_aggregate);
        keyPairQuery_aggregate = NULL;
    }
    if(keyQuery_fill){
        free(keyQuery_fill);
        keyQuery_fill = NULL;
    }
    if(valueQuery_fill){
        free(valueQuery_fill);
        valueQuery_fill = NULL;
    }
    if(keyPairQuery_fill){
        keyValuePair_free(keyPairQuery_fill);
        keyPairQuery_fill = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours(apiClient_t *apiClient, list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/historical/marketcap/ftw/assets/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/historical/marketcap/ftw/assets/hours");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_to_ts = NULL;
    char * valueQuery_to_ts = NULL;
    keyValuePair_t *keyPairQuery_to_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_to_ts = strdup("to_ts");
        valueQuery_to_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_to_ts, MAX_NUMBER_LENGTH, "%d", to_ts);
        keyPairQuery_to_ts = keyValuePair_create(keyQuery_to_ts, valueQuery_to_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_to_ts);
    }

    // query parameters
    char *keyQuery_aggregate = NULL;
    char * valueQuery_aggregate = NULL;
    keyValuePair_t *keyPairQuery_aggregate = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_aggregate = strdup("aggregate");
        valueQuery_aggregate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_aggregate, MAX_NUMBER_LENGTH, "%d", aggregate);
        keyPairQuery_aggregate = keyValuePair_create(keyQuery_aggregate, valueQuery_aggregate);
        list_addElement(localVarQueryParameters,keyPairQuery_aggregate);
    }

    // query parameters
    char *keyQuery_fill = NULL;
    char * valueQuery_fill = NULL;
    keyValuePair_t *keyPairQuery_fill = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_fill = strdup("fill");
        valueQuery_fill = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_fill, MAX_NUMBER_LENGTH, "%d", fill);
        keyPairQuery_fill = keyValuePair_create(keyQuery_fill, valueQuery_fill);
        list_addElement(localVarQueryParameters,keyPairQuery_fill);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(overviewV1HistoricalMarketcapFtwAssetsHours_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_to_ts){
        free(keyQuery_to_ts);
        keyQuery_to_ts = NULL;
    }
    if(valueQuery_to_ts){
        free(valueQuery_to_ts);
        valueQuery_to_ts = NULL;
    }
    if(keyPairQuery_to_ts){
        keyValuePair_free(keyPairQuery_to_ts);
        keyPairQuery_to_ts = NULL;
    }
    if(keyQuery_aggregate){
        free(keyQuery_aggregate);
        keyQuery_aggregate = NULL;
    }
    if(valueQuery_aggregate){
        free(valueQuery_aggregate);
        valueQuery_aggregate = NULL;
    }
    if(keyPairQuery_aggregate){
        keyValuePair_free(keyPairQuery_aggregate);
        keyPairQuery_aggregate = NULL;
    }
    if(keyQuery_fill){
        free(keyQuery_fill);
        keyQuery_fill = NULL;
    }
    if(valueQuery_fill){
        free(valueQuery_fill);
        valueQuery_fill = NULL;
    }
    if(keyPairQuery_fill){
        keyValuePair_free(keyPairQuery_fill);
        keyPairQuery_fill = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
OverviewAPI_overviewV1LatestMarketcapAllTick(apiClient_t *apiClient, list_t * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/latest/marketcap/all/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/latest/marketcap/all/tick");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
OverviewAPI_overviewV1LatestMarketcapFtwTick(apiClient_t *apiClient, list_t * groups )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/overview/v1/latest/marketcap/ftw/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/overview/v1/latest/marketcap/ftw/tick");




    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
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
    cJSON *OverviewAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(OverviewAPIlocalVarJSON);
    cJSON_Delete(OverviewAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

