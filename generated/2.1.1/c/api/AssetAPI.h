#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/error.h"
#include "../model/generic_response.h"

// Enum SORTBY for AssetAPI_assetV1TopList
typedef enum  { cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTBY_NULL = 0, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTBY_CREATED_ON, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTBY_UPDATED_ON, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTBY_SYMBOL } cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e;

// Enum SORTDIRECTION for AssetAPI_assetV1TopList
typedef enum  { cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTDIRECTION_NULL = 0, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTDIRECTION_DESC, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_SORTDIRECTION_ASC } cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e;


generic_response_t*
AssetAPI_assetV1DataByAddress(apiClient_t *apiClient, char * address , char * chain_symbol , char * groups );


generic_response_t*
AssetAPI_assetV1DataById(apiClient_t *apiClient, int asset_id , char * groups );


generic_response_t*
AssetAPI_assetV1DataBySymbol(apiClient_t *apiClient, char * asset_symbol , char * groups );


generic_response_t*
AssetAPI_assetV1TopList(apiClient_t *apiClient, int page , int page_size , char * asset_type , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e sort_by , cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e sort_direction , char * groups );


