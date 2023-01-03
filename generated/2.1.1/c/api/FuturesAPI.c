#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "FuturesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalDays

static char* futuresV1HistoricalDays_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e futuresV1HistoricalDays_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalDays_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalDays_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalDays_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e futuresV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalDays_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalDays

static char* futuresV1HistoricalDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e futuresV1HistoricalDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e futuresV1HistoricalDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalFundingRateDays

static char* futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalFundingRateDays

static char* futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalFundingRateHours

static char* futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalFundingRateHours

static char* futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalFundingRateMessages

static char* futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalFundingRateMessages

static char* futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalFundingRateMessagesHour

static char* futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalFundingRateMessagesHour

static char* futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalFundingRateMinutes

static char* futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalFundingRateMinutes

static char* futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalHours

static char* futuresV1HistoricalHours_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e futuresV1HistoricalHours_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalHours_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalHours_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalHours_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e futuresV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalHours_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalHours

static char* futuresV1HistoricalHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e futuresV1HistoricalHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e futuresV1HistoricalHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalMinutes

static char* futuresV1HistoricalMinutes_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e futuresV1HistoricalMinutes_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalMinutes_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e futuresV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalMinutes_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalMinutes

static char* futuresV1HistoricalMinutes_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e futuresV1HistoricalMinutes_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalMinutes_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e futuresV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalMinutes_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalOpenInterestDays

static char* futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalOpenInterestDays

static char* futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalOpenInterestHours

static char* futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalOpenInterestHours

static char* futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalOpenInterestMessages

static char* futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalOpenInterestMessages

static char* futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalOpenInterestMessagesHour

static char* futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalOpenInterestMessagesHour

static char* futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalOpenInterestMinutes

static char* futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalOpenInterestMinutes

static char* futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalTrades

static char* futuresV1HistoricalTrades_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e futuresV1HistoricalTrades_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalTrades_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalTrades_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalTrades_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalTrades_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e futuresV1HistoricalTrades_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalTrades_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalTrades

static char* futuresV1HistoricalTrades_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e futuresV1HistoricalTrades_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalTrades_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalTrades_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalTrades_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalTrades_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e futuresV1HistoricalTrades_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalTrades_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1HistoricalTradesHour

static char* futuresV1HistoricalTradesHour_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e futuresV1HistoricalTradesHour_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1HistoricalTradesHour_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalTradesHour_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1HistoricalTradesHour_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalTradesHour_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e futuresV1HistoricalTradesHour_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1HistoricalTradesHour_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_futuresV1HistoricalTradesHour

static char* futuresV1HistoricalTradesHour_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e futuresV1HistoricalTradesHour_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function futuresV1HistoricalTradesHour_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1HistoricalTradesHour_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", futuresV1HistoricalTradesHour_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1HistoricalTradesHour_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e futuresV1HistoricalTradesHour_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = futuresV1HistoricalTradesHour_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1LatestFundingRateTick

static char* futuresV1LatestFundingRateTick_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e futuresV1LatestFundingRateTick_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1LatestFundingRateTick_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1LatestFundingRateTick_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1LatestFundingRateTick_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1LatestFundingRateTick_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e futuresV1LatestFundingRateTick_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1LatestFundingRateTick_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1LatestInstrumentMetadata

static char* futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1LatestOpenInterestTick

static char* futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_futuresV1LatestTick

static char* futuresV1LatestTick_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e futuresV1LatestTick_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1LatestTick_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1LatestTick_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", futuresV1LatestTick_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1LatestTick_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e futuresV1LatestTick_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = futuresV1LatestTick_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for FuturesAPI_futuresV1MarketsInstruments

static char* futuresV1MarketsInstruments_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstruments_instrument_status_e futuresV1MarketsInstruments_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
    int stringToReturn = 0;
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    size_t sizeofArray = sizeof(INSTRUMENTSTATUSArray) / sizeof(INSTRUMENTSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(INSTRUMENTSTATUS, INSTRUMENTSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstruments_instrument_status_e futuresV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for FuturesAPI_futuresV1MarketsInstrumentsUnmapped

static char* futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstrumentsUnmapped_instrument_status_e futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
    int stringToReturn = 0;
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    size_t sizeofArray = sizeof(INSTRUMENTSTATUSArray) / sizeof(INSTRUMENTSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(INSTRUMENTSTATUS, INSTRUMENTSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstrumentsUnmapped_instrument_status_e futuresV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1HistoricalDays

static char* indexV1HistoricalDays_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e indexV1HistoricalDays_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1HistoricalDays_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalDays_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1HistoricalDays_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e indexV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1HistoricalDays_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_indexV1HistoricalDays

static char* indexV1HistoricalDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e indexV1HistoricalDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexV1HistoricalDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexV1HistoricalDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e indexV1HistoricalDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexV1HistoricalDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1HistoricalHours

static char* indexV1HistoricalHours_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e indexV1HistoricalHours_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1HistoricalHours_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalHours_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1HistoricalHours_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e indexV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1HistoricalHours_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_indexV1HistoricalHours

static char* indexV1HistoricalHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e indexV1HistoricalHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexV1HistoricalHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexV1HistoricalHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e indexV1HistoricalHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexV1HistoricalHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1HistoricalMessages

static char* indexV1HistoricalMessages_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e indexV1HistoricalMessages_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1HistoricalMessages_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMessages_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1HistoricalMessages_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMessages_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e indexV1HistoricalMessages_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1HistoricalMessages_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_indexV1HistoricalMessages

static char* indexV1HistoricalMessages_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e indexV1HistoricalMessages_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexV1HistoricalMessages_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMessages_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexV1HistoricalMessages_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMessages_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e indexV1HistoricalMessages_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexV1HistoricalMessages_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1HistoricalMessagesHour

static char* indexV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e indexV1HistoricalMessagesHour_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1HistoricalMessagesHour_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMessagesHour_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMessagesHour_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e indexV1HistoricalMessagesHour_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1HistoricalMessagesHour_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_indexV1HistoricalMessagesHour

static char* indexV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e indexV1HistoricalMessagesHour_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexV1HistoricalMessagesHour_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMessagesHour_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMessagesHour_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e indexV1HistoricalMessagesHour_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexV1HistoricalMessagesHour_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1HistoricalMinutes

static char* indexV1HistoricalMinutes_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e indexV1HistoricalMinutes_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1HistoricalMinutes_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e indexV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1HistoricalMinutes_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for FuturesAPI_indexV1HistoricalMinutes

static char* indexV1HistoricalMinutes_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e indexV1HistoricalMinutes_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexV1HistoricalMinutes_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e indexV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexV1HistoricalMinutes_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1LatestInstrumentMetadata

static char* indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for FuturesAPI_indexV1LatestTick

static char* indexV1LatestTick_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e indexV1LatestTick_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
    int stringToReturn = 0;
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    size_t sizeofArray = sizeof(MAPPINGPRIORITYArray) / sizeof(MAPPINGPRIORITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(MAPPINGPRIORITY, MAPPINGPRIORITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1LatestTick_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1LatestTick_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexV1LatestTick_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1LatestTick_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e indexV1LatestTick_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexV1LatestTick_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for FuturesAPI_indexV1MarketsInstruments

static char* indexV1MarketsInstruments_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstruments_instrument_status_e indexV1MarketsInstruments_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
    int stringToReturn = 0;
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    size_t sizeofArray = sizeof(INSTRUMENTSTATUSArray) / sizeof(INSTRUMENTSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(INSTRUMENTSTATUS, INSTRUMENTSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstruments_instrument_status_e indexV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for FuturesAPI_indexV1MarketsInstrumentsUnmapped

static char* indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstrumentsUnmapped_instrument_status_e indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
    int stringToReturn = 0;
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    size_t sizeofArray = sizeof(INSTRUMENTSTATUSArray) / sizeof(INSTRUMENTSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(INSTRUMENTSTATUS, INSTRUMENTSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstrumentsUnmapped_instrument_status_e indexV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/


generic_response_t*
FuturesAPI_futuresV1HistoricalDays(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/days");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalDays_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalDays_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalFundingRateDays(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/funding-rate/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/funding-rate/days");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalFundingRateDays_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalFundingRateDays_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalFundingRateHours(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/funding-rate/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/funding-rate/hours");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalFundingRateHours_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalFundingRateHours_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalFundingRateMessages(apiClient_t *apiClient, char * market , char * instrument , int after_ts , int last_ccseq , int limit , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/funding-rate-messages")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/funding-rate-messages");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_after_ts = NULL;
    char * valueQuery_after_ts = NULL;
    keyValuePair_t *keyPairQuery_after_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_after_ts = strdup("after_ts");
        valueQuery_after_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_after_ts, MAX_NUMBER_LENGTH, "%d", after_ts);
        keyPairQuery_after_ts = keyValuePair_create(keyQuery_after_ts, valueQuery_after_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_after_ts);
    }

    // query parameters
    char *keyQuery_last_ccseq = NULL;
    char * valueQuery_last_ccseq = NULL;
    keyValuePair_t *keyPairQuery_last_ccseq = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_last_ccseq = strdup("last_ccseq");
        valueQuery_last_ccseq = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_last_ccseq, MAX_NUMBER_LENGTH, "%d", last_ccseq);
        keyPairQuery_last_ccseq = keyValuePair_create(keyQuery_last_ccseq, valueQuery_last_ccseq);
        list_addElement(localVarQueryParameters,keyPairQuery_last_ccseq);
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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalFundingRateMessages_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessages_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalFundingRateMessages_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_after_ts){
        free(keyQuery_after_ts);
        keyQuery_after_ts = NULL;
    }
    if(valueQuery_after_ts){
        free(valueQuery_after_ts);
        valueQuery_after_ts = NULL;
    }
    if(keyPairQuery_after_ts){
        keyValuePair_free(keyPairQuery_after_ts);
        keyPairQuery_after_ts = NULL;
    }
    if(keyQuery_last_ccseq){
        free(keyQuery_last_ccseq);
        keyQuery_last_ccseq = NULL;
    }
    if(valueQuery_last_ccseq){
        free(valueQuery_last_ccseq);
        valueQuery_last_ccseq = NULL;
    }
    if(keyPairQuery_last_ccseq){
        keyValuePair_free(keyPairQuery_last_ccseq);
        keyPairQuery_last_ccseq = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1HistoricalFundingRateMessagesHour(apiClient_t *apiClient, char * market , char * instrument , int hour_ts , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/funding-rate-messages/hour")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/funding-rate-messages/hour");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_hour_ts = NULL;
    char * valueQuery_hour_ts = NULL;
    keyValuePair_t *keyPairQuery_hour_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_hour_ts = strdup("hour_ts");
        valueQuery_hour_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hour_ts, MAX_NUMBER_LENGTH, "%d", hour_ts);
        keyPairQuery_hour_ts = keyValuePair_create(keyQuery_hour_ts, valueQuery_hour_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_hour_ts);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalFundingRateMessagesHour_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMessagesHour_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalFundingRateMessagesHour_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_hour_ts){
        free(keyQuery_hour_ts);
        keyQuery_hour_ts = NULL;
    }
    if(valueQuery_hour_ts){
        free(valueQuery_hour_ts);
        valueQuery_hour_ts = NULL;
    }
    if(keyPairQuery_hour_ts){
        keyValuePair_free(keyPairQuery_hour_ts);
        keyPairQuery_hour_ts = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1HistoricalFundingRateMinutes(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/funding-rate/minutes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/funding-rate/minutes");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalFundingRateMinutes_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalFundingRateMinutes_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalFundingRateMinutes_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalHours(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/hours");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalHours_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalHours_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalMinutes(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/minutes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/minutes");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalMinutes_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalMinutes_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalMinutes_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalOpenInterestDays(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/open-interest/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/open-interest/days");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalOpenInterestDays_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalOpenInterestDays_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalOpenInterestHours(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/open-interest/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/open-interest/hours");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalOpenInterestHours_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalOpenInterestHours_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalOpenInterestMessages(apiClient_t *apiClient, char * market , char * instrument , int after_ts , int last_ccseq , int limit , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/open-interest-messages")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/open-interest-messages");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_after_ts = NULL;
    char * valueQuery_after_ts = NULL;
    keyValuePair_t *keyPairQuery_after_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_after_ts = strdup("after_ts");
        valueQuery_after_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_after_ts, MAX_NUMBER_LENGTH, "%d", after_ts);
        keyPairQuery_after_ts = keyValuePair_create(keyQuery_after_ts, valueQuery_after_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_after_ts);
    }

    // query parameters
    char *keyQuery_last_ccseq = NULL;
    char * valueQuery_last_ccseq = NULL;
    keyValuePair_t *keyPairQuery_last_ccseq = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_last_ccseq = strdup("last_ccseq");
        valueQuery_last_ccseq = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_last_ccseq, MAX_NUMBER_LENGTH, "%d", last_ccseq);
        keyPairQuery_last_ccseq = keyValuePair_create(keyQuery_last_ccseq, valueQuery_last_ccseq);
        list_addElement(localVarQueryParameters,keyPairQuery_last_ccseq);
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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalOpenInterestMessages_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessages_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalOpenInterestMessages_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_after_ts){
        free(keyQuery_after_ts);
        keyQuery_after_ts = NULL;
    }
    if(valueQuery_after_ts){
        free(valueQuery_after_ts);
        valueQuery_after_ts = NULL;
    }
    if(keyPairQuery_after_ts){
        keyValuePair_free(keyPairQuery_after_ts);
        keyPairQuery_after_ts = NULL;
    }
    if(keyQuery_last_ccseq){
        free(keyQuery_last_ccseq);
        keyQuery_last_ccseq = NULL;
    }
    if(valueQuery_last_ccseq){
        free(valueQuery_last_ccseq);
        valueQuery_last_ccseq = NULL;
    }
    if(keyPairQuery_last_ccseq){
        keyValuePair_free(keyPairQuery_last_ccseq);
        keyPairQuery_last_ccseq = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1HistoricalOpenInterestMessagesHour(apiClient_t *apiClient, char * market , char * instrument , int hour_ts , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/open-interest-messages/hour")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/open-interest-messages/hour");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_hour_ts = NULL;
    char * valueQuery_hour_ts = NULL;
    keyValuePair_t *keyPairQuery_hour_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_hour_ts = strdup("hour_ts");
        valueQuery_hour_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hour_ts, MAX_NUMBER_LENGTH, "%d", hour_ts);
        keyPairQuery_hour_ts = keyValuePair_create(keyQuery_hour_ts, valueQuery_hour_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_hour_ts);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalOpenInterestMessagesHour_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMessagesHour_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalOpenInterestMessagesHour_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_hour_ts){
        free(keyQuery_hour_ts);
        keyQuery_hour_ts = NULL;
    }
    if(valueQuery_hour_ts){
        free(valueQuery_hour_ts);
        valueQuery_hour_ts = NULL;
    }
    if(keyPairQuery_hour_ts){
        keyValuePair_free(keyPairQuery_hour_ts);
        keyPairQuery_hour_ts = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1HistoricalOpenInterestMinutes(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/open-interest/minutes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/open-interest/minutes");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalOpenInterestMinutes_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalOpenInterestMinutes_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalOpenInterestMinutes_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_futuresV1HistoricalTrades(apiClient_t *apiClient, char * market , char * instrument , int after_ts , int last_ccseq , int limit , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/trades")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/trades");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_after_ts = NULL;
    char * valueQuery_after_ts = NULL;
    keyValuePair_t *keyPairQuery_after_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_after_ts = strdup("after_ts");
        valueQuery_after_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_after_ts, MAX_NUMBER_LENGTH, "%d", after_ts);
        keyPairQuery_after_ts = keyValuePair_create(keyQuery_after_ts, valueQuery_after_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_after_ts);
    }

    // query parameters
    char *keyQuery_last_ccseq = NULL;
    char * valueQuery_last_ccseq = NULL;
    keyValuePair_t *keyPairQuery_last_ccseq = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_last_ccseq = strdup("last_ccseq");
        valueQuery_last_ccseq = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_last_ccseq, MAX_NUMBER_LENGTH, "%d", last_ccseq);
        keyPairQuery_last_ccseq = keyValuePair_create(keyQuery_last_ccseq, valueQuery_last_ccseq);
        list_addElement(localVarQueryParameters,keyPairQuery_last_ccseq);
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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalTrades_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTrades_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalTrades_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_after_ts){
        free(keyQuery_after_ts);
        keyQuery_after_ts = NULL;
    }
    if(valueQuery_after_ts){
        free(valueQuery_after_ts);
        valueQuery_after_ts = NULL;
    }
    if(keyPairQuery_after_ts){
        keyValuePair_free(keyPairQuery_after_ts);
        keyPairQuery_after_ts = NULL;
    }
    if(keyQuery_last_ccseq){
        free(keyQuery_last_ccseq);
        keyQuery_last_ccseq = NULL;
    }
    if(valueQuery_last_ccseq){
        free(valueQuery_last_ccseq);
        valueQuery_last_ccseq = NULL;
    }
    if(keyPairQuery_last_ccseq){
        keyValuePair_free(keyPairQuery_last_ccseq);
        keyPairQuery_last_ccseq = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1HistoricalTradesHour(apiClient_t *apiClient, char * market , char * instrument , int hour_ts , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/historical/trades/hour")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/historical/trades/hour");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_hour_ts = NULL;
    char * valueQuery_hour_ts = NULL;
    keyValuePair_t *keyPairQuery_hour_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_hour_ts = strdup("hour_ts");
        valueQuery_hour_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hour_ts, MAX_NUMBER_LENGTH, "%d", hour_ts);
        keyPairQuery_hour_ts = keyValuePair_create(keyQuery_hour_ts, valueQuery_hour_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_hour_ts);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1HistoricalTradesHour_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1HistoricalTradesHour_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(futuresV1HistoricalTradesHour_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_hour_ts){
        free(keyQuery_hour_ts);
        keyQuery_hour_ts = NULL;
    }
    if(valueQuery_hour_ts){
        free(valueQuery_hour_ts);
        valueQuery_hour_ts = NULL;
    }
    if(keyPairQuery_hour_ts){
        keyValuePair_free(keyPairQuery_hour_ts);
        keyPairQuery_hour_ts = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1LatestFundingRateTick(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/latest/funding-rate/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/latest/funding-rate/tick");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestFundingRateTick_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1LatestFundingRateTick_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1LatestInstrumentMetadata(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/latest/instrument/metadata")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/latest/instrument/metadata");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestInstrumentMetadata_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1LatestOpenInterestTick(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/latest/open-interest/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/latest/open-interest/tick");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestOpenInterestTick_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1LatestOpenInterestTick_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1LatestTick(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/latest/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/latest/tick");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_futuresV1LatestTick_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(futuresV1LatestTick_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1Markets(apiClient_t *apiClient, char * market )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/markets")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/markets");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1MarketsInstruments(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/markets/instruments")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/markets/instruments");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    if (instrument_status)
    {
        list_addElement(localVarQueryParameters,instrument_status);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_futuresV1MarketsInstrumentsUnmapped(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/futures/v1/markets/instruments/unmapped")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/futures/v1/markets/instruments/unmapped");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    if (instrument_status)
    {
        list_addElement(localVarQueryParameters,instrument_status);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1HistoricalDays(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/historical/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/historical/days");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1HistoricalDays_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexV1HistoricalDays_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_indexV1HistoricalHours(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/historical/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/historical/hours");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1HistoricalHours_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexV1HistoricalHours_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_indexV1HistoricalMessages(apiClient_t *apiClient, char * market , char * instrument , int after_ts , int last_ccseq , int limit , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/historical/messages")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/historical/messages");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_after_ts = NULL;
    char * valueQuery_after_ts = NULL;
    keyValuePair_t *keyPairQuery_after_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_after_ts = strdup("after_ts");
        valueQuery_after_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_after_ts, MAX_NUMBER_LENGTH, "%d", after_ts);
        keyPairQuery_after_ts = keyValuePair_create(keyQuery_after_ts, valueQuery_after_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_after_ts);
    }

    // query parameters
    char *keyQuery_last_ccseq = NULL;
    char * valueQuery_last_ccseq = NULL;
    keyValuePair_t *keyPairQuery_last_ccseq = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_last_ccseq = strdup("last_ccseq");
        valueQuery_last_ccseq = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_last_ccseq, MAX_NUMBER_LENGTH, "%d", last_ccseq);
        keyPairQuery_last_ccseq = keyValuePair_create(keyQuery_last_ccseq, valueQuery_last_ccseq);
        list_addElement(localVarQueryParameters,keyPairQuery_last_ccseq);
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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1HistoricalMessages_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessages_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexV1HistoricalMessages_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_after_ts){
        free(keyQuery_after_ts);
        keyQuery_after_ts = NULL;
    }
    if(valueQuery_after_ts){
        free(valueQuery_after_ts);
        valueQuery_after_ts = NULL;
    }
    if(keyPairQuery_after_ts){
        keyValuePair_free(keyPairQuery_after_ts);
        keyPairQuery_after_ts = NULL;
    }
    if(keyQuery_last_ccseq){
        free(keyQuery_last_ccseq);
        keyQuery_last_ccseq = NULL;
    }
    if(valueQuery_last_ccseq){
        free(valueQuery_last_ccseq);
        valueQuery_last_ccseq = NULL;
    }
    if(keyPairQuery_last_ccseq){
        keyValuePair_free(keyPairQuery_last_ccseq);
        keyPairQuery_last_ccseq = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1HistoricalMessagesHour(apiClient_t *apiClient, char * market , char * instrument , int hour_ts , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/historical/messages/hour")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/historical/messages/hour");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    char *keyQuery_hour_ts = NULL;
    char * valueQuery_hour_ts = NULL;
    keyValuePair_t *keyPairQuery_hour_ts = 0;
    if (1) // Always send integer parameters to the API server
    {
        keyQuery_hour_ts = strdup("hour_ts");
        valueQuery_hour_ts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hour_ts, MAX_NUMBER_LENGTH, "%d", hour_ts);
        keyPairQuery_hour_ts = keyValuePair_create(keyQuery_hour_ts, valueQuery_hour_ts);
        list_addElement(localVarQueryParameters,keyPairQuery_hour_ts);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMessagesHour_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(
		valueQuery_response_format)));
        list_addElement(localVarQueryParameters,keyPairQuery_response_format);
    }

    // query parameters
    char *keyQuery_return_404_on_empty_response = NULL;
    char * valueQuery_return_404_on_empty_response = NULL;
    keyValuePair_t *keyPairQuery_return_404_on_empty_response = 0;
    if (1) // Always send boolean parameters to the API server
    {
        keyQuery_return_404_on_empty_response = strdup("return_404_on_empty_response");
        valueQuery_return_404_on_empty_response = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_return_404_on_empty_response, MAX_NUMBER_LENGTH, "%d", return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = keyValuePair_create(keyQuery_return_404_on_empty_response, valueQuery_return_404_on_empty_response);
        list_addElement(localVarQueryParameters,keyPairQuery_return_404_on_empty_response);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    if(keyQuery_hour_ts){
        free(keyQuery_hour_ts);
        keyQuery_hour_ts = NULL;
    }
    if(valueQuery_hour_ts){
        free(valueQuery_hour_ts);
        valueQuery_hour_ts = NULL;
    }
    if(keyPairQuery_hour_ts){
        keyValuePair_free(keyPairQuery_hour_ts);
        keyPairQuery_hour_ts = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    if(keyQuery_response_format){
        free(keyQuery_response_format);
        keyQuery_response_format = NULL;
    }
    if(keyPairQuery_response_format){
        keyValuePair_free(keyPairQuery_response_format);
        keyPairQuery_response_format = NULL;
    }
    if(keyQuery_return_404_on_empty_response){
        free(keyQuery_return_404_on_empty_response);
        keyQuery_return_404_on_empty_response = NULL;
    }
    if(valueQuery_return_404_on_empty_response){
        free(valueQuery_return_404_on_empty_response);
        valueQuery_return_404_on_empty_response = NULL;
    }
    if(keyPairQuery_return_404_on_empty_response){
        keyValuePair_free(keyPairQuery_return_404_on_empty_response);
        keyPairQuery_return_404_on_empty_response = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1HistoricalMinutes(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/historical/minutes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/historical/minutes");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1HistoricalMinutes_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1HistoricalMinutes_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexV1HistoricalMinutes_RESPONSEFORMAT_ToString(
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
FuturesAPI_indexV1LatestInstrumentMetadata(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/latest/instrument/metadata")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/latest/instrument/metadata");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestInstrumentMetadata_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1LatestTick(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/latest/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/latest/tick");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    if (instruments)
    {
        list_addElement(localVarQueryParameters,instruments);
    }

    // query parameters
    if (groups)
    {
        list_addElement(localVarQueryParameters,groups);
    }

    // query parameters
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexV1LatestTick_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexV1LatestTick_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1Markets(apiClient_t *apiClient, char * market )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/markets")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/markets");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1MarketsInstruments(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/markets/instruments")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/markets/instruments");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    if (instrument_status)
    {
        list_addElement(localVarQueryParameters,instrument_status);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

generic_response_t*
FuturesAPI_indexV1MarketsInstrumentsUnmapped(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/v1/markets/instruments/unmapped")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/v1/markets/instruments/unmapped");




    // query parameters
    char *keyQuery_market = NULL;
    char * valueQuery_market = NULL;
    keyValuePair_t *keyPairQuery_market = 0;
    if (market)
    {
        keyQuery_market = strdup("market");
        valueQuery_market = strdup((market));
        keyPairQuery_market = keyValuePair_create(keyQuery_market, valueQuery_market);
        list_addElement(localVarQueryParameters,keyPairQuery_market);
    }

    // query parameters
    char *keyQuery_instrument = NULL;
    char * valueQuery_instrument = NULL;
    keyValuePair_t *keyPairQuery_instrument = 0;
    if (instrument)
    {
        keyQuery_instrument = strdup("instrument");
        valueQuery_instrument = strdup((instrument));
        keyPairQuery_instrument = keyValuePair_create(keyQuery_instrument, valueQuery_instrument);
        list_addElement(localVarQueryParameters,keyPairQuery_instrument);
    }

    // query parameters
    if (instrument_status)
    {
        list_addElement(localVarQueryParameters,instrument_status);
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
    cJSON *FuturesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(FuturesAPIlocalVarJSON);
    cJSON_Delete(FuturesAPIlocalVarJSON);
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
    if(keyQuery_market){
        free(keyQuery_market);
        keyQuery_market = NULL;
    }
    if(valueQuery_market){
        free(valueQuery_market);
        valueQuery_market = NULL;
    }
    if(keyPairQuery_market){
        keyValuePair_free(keyPairQuery_market);
        keyPairQuery_market = NULL;
    }
    if(keyQuery_instrument){
        free(keyQuery_instrument);
        keyQuery_instrument = NULL;
    }
    if(valueQuery_instrument){
        free(valueQuery_instrument);
        valueQuery_instrument = NULL;
    }
    if(keyPairQuery_instrument){
        keyValuePair_free(keyPairQuery_instrument);
        keyPairQuery_instrument = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

