#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "NewsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Functions for enum LANG for NewsAPI_newsV1ArticleList

static char* newsV1ArticleList_LANG_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e LANG){
    char *LANGArray[] =  { "NULL", "EN", "ES", "PT", "" };
    return LANGArray[LANG];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e newsV1ArticleList_LANG_FromString(char* LANG){
    int stringToReturn = 0;
    char *LANGArray[] =  { "NULL", "EN", "ES", "PT", "" };
    size_t sizeofArray = sizeof(LANGArray) / sizeof(LANGArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(LANG, LANGArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1ArticleList_LANG_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1ArticleList_LANG_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e LANG) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "lang", newsV1ArticleList_LANG_ToString(LANG)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1ArticleList_LANG_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e newsV1ArticleList_LANG_parseFromJSON(cJSON* LANGJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e LANGVariable = 0;
    cJSON *LANGVar = cJSON_GetObjectItemCaseSensitive(LANGJSON, "lang");
    if(!cJSON_IsString(LANGVar) || (LANGVar->valuestring == NULL))
    {
        goto end;
    }
    LANGVariable = newsV1ArticleList_LANG_FromString(LANGVar->valuestring);
    return LANGVariable;
end:
    return 0;
}
*/

// Functions for enum CATEGORIES for NewsAPI_newsV1ArticleList

static char* newsV1ArticleList_CATEGORIES_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_categories_e CATEGORIES){
    char *CATEGORIESArray[] =  { "NULL", "1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "" };
    return CATEGORIESArray[CATEGORIES];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_categories_e newsV1ArticleList_CATEGORIES_FromString(char* CATEGORIES){
    int stringToReturn = 0;
    char *CATEGORIESArray[] =  { "NULL", "1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "" };
    size_t sizeofArray = sizeof(CATEGORIESArray) / sizeof(CATEGORIESArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CATEGORIES, CATEGORIESArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1ArticleList_CATEGORIES_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1ArticleList_CATEGORIES_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_categories_e CATEGORIES) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1ArticleList_CATEGORIES_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_categories_e newsV1ArticleList_CATEGORIES_parseFromJSON(cJSON* CATEGORIESJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_categories_e CATEGORIESVariable = 0;
    return CATEGORIESVariable;
end:
    return 0;
}
*/

// Functions for enum EXCLUDECATEGORIES for NewsAPI_newsV1ArticleList

static char* newsV1ArticleList_EXCLUDECATEGORIES_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_exclude_categories_e EXCLUDECATEGORIES){
    char *EXCLUDECATEGORIESArray[] =  { "NULL", "1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "" };
    return EXCLUDECATEGORIESArray[EXCLUDECATEGORIES];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_exclude_categories_e newsV1ArticleList_EXCLUDECATEGORIES_FromString(char* EXCLUDECATEGORIES){
    int stringToReturn = 0;
    char *EXCLUDECATEGORIESArray[] =  { "NULL", "1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "" };
    size_t sizeofArray = sizeof(EXCLUDECATEGORIESArray) / sizeof(EXCLUDECATEGORIESArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(EXCLUDECATEGORIES, EXCLUDECATEGORIESArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1ArticleList_EXCLUDECATEGORIES_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1ArticleList_EXCLUDECATEGORIES_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_exclude_categories_e EXCLUDECATEGORIES) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1ArticleList_EXCLUDECATEGORIES_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_exclude_categories_e newsV1ArticleList_EXCLUDECATEGORIES_parseFromJSON(cJSON* EXCLUDECATEGORIESJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_exclude_categories_e EXCLUDECATEGORIESVariable = 0;
    return EXCLUDECATEGORIESVariable;
end:
    return 0;
}
*/

// Functions for enum LANG for NewsAPI_newsV1SourceList

static char* newsV1SourceList_LANG_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e LANG){
    char *LANGArray[] =  { "NULL", "EN", "ES", "PT", "" };
    return LANGArray[LANG];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e newsV1SourceList_LANG_FromString(char* LANG){
    int stringToReturn = 0;
    char *LANGArray[] =  { "NULL", "EN", "ES", "PT", "" };
    size_t sizeofArray = sizeof(LANGArray) / sizeof(LANGArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(LANG, LANGArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1SourceList_LANG_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1SourceList_LANG_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e LANG) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "lang", newsV1SourceList_LANG_ToString(LANG)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1SourceList_LANG_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e newsV1SourceList_LANG_parseFromJSON(cJSON* LANGJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e LANGVariable = 0;
    cJSON *LANGVar = cJSON_GetObjectItemCaseSensitive(LANGJSON, "lang");
    if(!cJSON_IsString(LANGVar) || (LANGVar->valuestring == NULL))
    {
        goto end;
    }
    LANGVariable = newsV1SourceList_LANG_FromString(LANGVar->valuestring);
    return LANGVariable;
end:
    return 0;
}
*/

// Functions for enum TYPE for NewsAPI_newsV1SourceList

static char* newsV1SourceList_TYPE_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e TYPE){
    char *TYPEArray[] =  { "NULL", "RSS", "API", "TWITTER", "" };
    return TYPEArray[TYPE];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e newsV1SourceList_TYPE_FromString(char* TYPE){
    int stringToReturn = 0;
    char *TYPEArray[] =  { "NULL", "RSS", "API", "TWITTER", "" };
    size_t sizeofArray = sizeof(TYPEArray) / sizeof(TYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(TYPE, TYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1SourceList_TYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1SourceList_TYPE_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e TYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "type", newsV1SourceList_TYPE_ToString(TYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1SourceList_TYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e newsV1SourceList_TYPE_parseFromJSON(cJSON* TYPEJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e TYPEVariable = 0;
    cJSON *TYPEVar = cJSON_GetObjectItemCaseSensitive(TYPEJSON, "type");
    if(!cJSON_IsString(TYPEVar) || (TYPEVar->valuestring == NULL))
    {
        goto end;
    }
    TYPEVariable = newsV1SourceList_TYPE_FromString(TYPEVar->valuestring);
    return TYPEVariable;
end:
    return 0;
}
*/

// Functions for enum STATUS for NewsAPI_newsV1SourceList

static char* newsV1SourceList_STATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e STATUS){
    char *STATUSArray[] =  { "NULL", "ACTIVE", "INACTIVE", "" };
    return STATUSArray[STATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e newsV1SourceList_STATUS_FromString(char* STATUS){
    int stringToReturn = 0;
    char *STATUSArray[] =  { "NULL", "ACTIVE", "INACTIVE", "" };
    size_t sizeofArray = sizeof(STATUSArray) / sizeof(STATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUS, STATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function newsV1SourceList_STATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *newsV1SourceList_STATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e STATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", newsV1SourceList_STATUS_ToString(STATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function newsV1SourceList_STATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e newsV1SourceList_STATUS_parseFromJSON(cJSON* STATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e STATUSVariable = 0;
    cJSON *STATUSVar = cJSON_GetObjectItemCaseSensitive(STATUSJSON, "status");
    if(!cJSON_IsString(STATUSVar) || (STATUSVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSVariable = newsV1SourceList_STATUS_FromString(STATUSVar->valuestring);
    return STATUSVariable;
end:
    return 0;
}
*/


generic_response_t*
NewsAPI_newsV1ArticleList(apiClient_t *apiClient, list_t * source_ids , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e lang , list_t * categories , list_t * exclude_categories , int to_ts )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/news/v1/article/list")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/news/v1/article/list");




    // query parameters
    if (source_ids)
    {
        list_addElement(localVarQueryParameters,source_ids);
    }

    // query parameters
    char *keyQuery_lang = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e valueQuery_lang ;
    keyValuePair_t *keyPairQuery_lang = 0;
    if (lang)
    {
        keyQuery_lang = strdup("lang");
        valueQuery_lang = (lang);
        keyPairQuery_lang = keyValuePair_create(keyQuery_lang, (void *)strdup(newsV1ArticleList_LANG_ToString(
		valueQuery_lang)));
        list_addElement(localVarQueryParameters,keyPairQuery_lang);
    }

    // query parameters
    if (categories)
    {
        list_addElement(localVarQueryParameters,categories);
    }

    // query parameters
    if (exclude_categories)
    {
        list_addElement(localVarQueryParameters,exclude_categories);
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
    cJSON *NewsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(NewsAPIlocalVarJSON);
    cJSON_Delete(NewsAPIlocalVarJSON);
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
    if(keyQuery_lang){
        free(keyQuery_lang);
        keyQuery_lang = NULL;
    }
    if(keyPairQuery_lang){
        keyValuePair_free(keyPairQuery_lang);
        keyPairQuery_lang = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
NewsAPI_newsV1CategoryList(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/news/v1/category/list")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/news/v1/category/list");



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
    cJSON *NewsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(NewsAPIlocalVarJSON);
    cJSON_Delete(NewsAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
NewsAPI_newsV1SourceList(apiClient_t *apiClient, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e lang , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e type , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/news/v1/source/list")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/news/v1/source/list");




    // query parameters
    char *keyQuery_lang = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e valueQuery_lang ;
    keyValuePair_t *keyPairQuery_lang = 0;
    if (lang)
    {
        keyQuery_lang = strdup("lang");
        valueQuery_lang = (lang);
        keyPairQuery_lang = keyValuePair_create(keyQuery_lang, (void *)strdup(newsV1SourceList_LANG_ToString(
		valueQuery_lang)));
        list_addElement(localVarQueryParameters,keyPairQuery_lang);
    }

    // query parameters
    char *keyQuery_type = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e valueQuery_type ;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = (type);
        keyPairQuery_type = keyValuePair_create(keyQuery_type, (void *)strdup(newsV1SourceList_TYPE_ToString(
		valueQuery_type)));
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_status = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e valueQuery_status ;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = (status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, (void *)strdup(newsV1SourceList_STATUS_ToString(
		valueQuery_status)));
        list_addElement(localVarQueryParameters,keyPairQuery_status);
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
    cJSON *NewsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(NewsAPIlocalVarJSON);
    cJSON_Delete(NewsAPIlocalVarJSON);
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
    if(keyQuery_lang){
        free(keyQuery_lang);
        keyQuery_lang = NULL;
    }
    if(keyPairQuery_lang){
        keyValuePair_free(keyPairQuery_lang);
        keyPairQuery_lang = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

