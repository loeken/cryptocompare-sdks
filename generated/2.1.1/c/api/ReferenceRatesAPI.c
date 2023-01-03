#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "ReferenceRatesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1HistoricalDays

static char* indexCcV1HistoricalDays_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e indexCcV1HistoricalDays_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1HistoricalDays_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalDays_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1HistoricalDays_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e indexCcV1HistoricalDays_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1HistoricalDays_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReferenceRatesAPI_indexCcV1HistoricalDays

static char* indexCcV1HistoricalDays_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e indexCcV1HistoricalDays_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexCcV1HistoricalDays_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalDays_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexCcV1HistoricalDays_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalDays_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e indexCcV1HistoricalDays_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexCcV1HistoricalDays_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1HistoricalHours

static char* indexCcV1HistoricalHours_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e indexCcV1HistoricalHours_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1HistoricalHours_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalHours_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1HistoricalHours_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e indexCcV1HistoricalHours_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1HistoricalHours_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReferenceRatesAPI_indexCcV1HistoricalHours

static char* indexCcV1HistoricalHours_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e indexCcV1HistoricalHours_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexCcV1HistoricalHours_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalHours_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexCcV1HistoricalHours_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalHours_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e indexCcV1HistoricalHours_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexCcV1HistoricalHours_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1HistoricalMessages

static char* indexCcV1HistoricalMessages_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e indexCcV1HistoricalMessages_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1HistoricalMessages_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMessages_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1HistoricalMessages_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMessages_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e indexCcV1HistoricalMessages_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1HistoricalMessages_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReferenceRatesAPI_indexCcV1HistoricalMessages

static char* indexCcV1HistoricalMessages_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e indexCcV1HistoricalMessages_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexCcV1HistoricalMessages_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMessages_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexCcV1HistoricalMessages_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMessages_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e indexCcV1HistoricalMessages_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexCcV1HistoricalMessages_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1HistoricalMessagesHour

static char* indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReferenceRatesAPI_indexCcV1HistoricalMessagesHour

static char* indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1HistoricalMinutes

static char* indexCcV1HistoricalMinutes_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e indexCcV1HistoricalMinutes_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMinutes_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1HistoricalMinutes_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e indexCcV1HistoricalMinutes_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1HistoricalMinutes_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReferenceRatesAPI_indexCcV1HistoricalMinutes

static char* indexCcV1HistoricalMinutes_RESPONSEFORMAT_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e indexCcV1HistoricalMinutes_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function indexCcV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1HistoricalMinutes_RESPONSEFORMAT_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "response_format", indexCcV1HistoricalMinutes_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e indexCcV1HistoricalMinutes_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "response_format");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = indexCcV1HistoricalMinutes_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata

static char* indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum MAPPINGPRIORITY for ReferenceRatesAPI_indexCcV1LatestTick

static char* indexCcV1LatestTick_MAPPINGPRIORITY_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e MAPPINGPRIORITY){
    char *MAPPINGPRIORITYArray[] =  { "NULL", "CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST" };
    return MAPPINGPRIORITYArray[MAPPINGPRIORITY];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e indexCcV1LatestTick_MAPPINGPRIORITY_FromString(char* MAPPINGPRIORITY){
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
// Function indexCcV1LatestTick_MAPPINGPRIORITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1LatestTick_MAPPINGPRIORITY_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e MAPPINGPRIORITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "mapping_priority", indexCcV1LatestTick_MAPPINGPRIORITY_ToString(MAPPINGPRIORITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1LatestTick_MAPPINGPRIORITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e indexCcV1LatestTick_MAPPINGPRIORITY_parseFromJSON(cJSON* MAPPINGPRIORITYJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e MAPPINGPRIORITYVariable = 0;
    cJSON *MAPPINGPRIORITYVar = cJSON_GetObjectItemCaseSensitive(MAPPINGPRIORITYJSON, "mapping_priority");
    if(!cJSON_IsString(MAPPINGPRIORITYVar) || (MAPPINGPRIORITYVar->valuestring == NULL))
    {
        goto end;
    }
    MAPPINGPRIORITYVariable = indexCcV1LatestTick_MAPPINGPRIORITY_FromString(MAPPINGPRIORITYVar->valuestring);
    return MAPPINGPRIORITYVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for ReferenceRatesAPI_indexCcV1MarketsInstruments

static char* indexCcV1MarketsInstruments_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstruments_instrument_status_e indexCcV1MarketsInstruments_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
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
// Function indexCcV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1MarketsInstruments_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstruments_instrument_status_e indexCcV1MarketsInstruments_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstruments_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum INSTRUMENTSTATUS for ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped

static char* indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_ToString(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS){
    char *INSTRUMENTSTATUSArray[] =  { "NULL", "ACTIVE", "IGNORED", "RETIRED", "EXPIRED" };
    return INSTRUMENTSTATUSArray[INSTRUMENTSTATUS];
}

static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstrumentsUnmapped_instrument_status_e indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_FromString(char* INSTRUMENTSTATUS){
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
// Function indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_convertToJSON(cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUS) {
    cJSON *item = cJSON_CreateObject();
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstrumentsUnmapped_instrument_status_e indexCcV1MarketsInstrumentsUnmapped_INSTRUMENTSTATUS_parseFromJSON(cJSON* INSTRUMENTSTATUSJSON) {
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1MarketsInstrumentsUnmapped_instrument_status_e INSTRUMENTSTATUSVariable = 0;
    return INSTRUMENTSTATUSVariable;
end:
    return 0;
}
*/


generic_response_t*
ReferenceRatesAPI_indexCcV1HistoricalDays(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/historical/days")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/historical/days");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1HistoricalDays_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexCcV1HistoricalDays_RESPONSEFORMAT_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1HistoricalHours(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/historical/hours")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/historical/hours");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1HistoricalHours_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexCcV1HistoricalHours_RESPONSEFORMAT_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1HistoricalMessages(apiClient_t *apiClient, char * market , char * instrument , int after_ts , int last_ccseq , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e mapping_priority , int limit , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/historical/messages")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/historical/messages");




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
    char *keyQuery_mapping_priority = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1HistoricalMessages_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
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
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexCcV1HistoricalMessages_RESPONSEFORMAT_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
    if(keyQuery_mapping_priority){
        free(keyQuery_mapping_priority);
        keyQuery_mapping_priority = NULL;
    }
    if(keyPairQuery_mapping_priority){
        keyValuePair_free(keyPairQuery_mapping_priority);
        keyPairQuery_mapping_priority = NULL;
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
ReferenceRatesAPI_indexCcV1HistoricalMessagesHour(apiClient_t *apiClient, char * market , char * instrument , int hour_ts , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e response_format , int return_404_on_empty_response )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/historical/messages/hour")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/historical/messages/hour");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1HistoricalMessagesHour_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexCcV1HistoricalMessagesHour_RESPONSEFORMAT_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1HistoricalMinutes(apiClient_t *apiClient, char * market , char * instrument , list_t * groups , int limit , int to_ts , int aggregate , int fill , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e mapping_priority , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e response_format )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/historical/minutes")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/historical/minutes");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1HistoricalMinutes_MAPPINGPRIORITY_ToString(
		valueQuery_mapping_priority)));
        list_addElement(localVarQueryParameters,keyPairQuery_mapping_priority);
    }

    // query parameters
    char *keyQuery_response_format = NULL;
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e valueQuery_response_format ;
    keyValuePair_t *keyPairQuery_response_format = 0;
    if (response_format)
    {
        keyQuery_response_format = strdup("response_format");
        valueQuery_response_format = (response_format);
        keyPairQuery_response_format = keyValuePair_create(keyQuery_response_format, (void *)strdup(indexCcV1HistoricalMinutes_RESPONSEFORMAT_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/latest/instrument/metadata")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/latest/instrument/metadata");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1LatestInstrumentMetadata_MAPPINGPRIORITY_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1LatestTick(apiClient_t *apiClient, char * market , list_t * instruments , list_t * groups , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e mapping_priority )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/latest/tick")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/latest/tick");




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
    cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e valueQuery_mapping_priority ;
    keyValuePair_t *keyPairQuery_mapping_priority = 0;
    if (mapping_priority)
    {
        keyQuery_mapping_priority = strdup("mapping_priority");
        valueQuery_mapping_priority = (mapping_priority);
        keyPairQuery_mapping_priority = keyValuePair_create(keyQuery_mapping_priority, (void *)strdup(indexCcV1LatestTick_MAPPINGPRIORITY_ToString(
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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1Markets(apiClient_t *apiClient, char * market )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/markets")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/markets");




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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1MarketsInstruments(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/markets/instruments")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/markets/instruments");




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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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
ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped(apiClient_t *apiClient, char * market , char * instrument , list_t * instrument_status )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/index/cc/v1/markets/instruments/unmapped")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/index/cc/v1/markets/instruments/unmapped");




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
    cJSON *ReferenceRatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    generic_response_t *elementToReturn = generic_response_parseFromJSON(ReferenceRatesAPIlocalVarJSON);
    cJSON_Delete(ReferenceRatesAPIlocalVarJSON);
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

