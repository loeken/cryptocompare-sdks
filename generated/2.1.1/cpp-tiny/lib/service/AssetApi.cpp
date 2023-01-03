#include "AssetApi.h"

using namespace Tiny;



        Response<
            GENERIC_RESPONSE
        >
        AssetApi::
        assetV1DataByAddress(
            
            std::string address
            , 
            
            std::string chainSymbol
            , 
            
            std::string groups
            
        )
        {
            std::string url = basepath + "/asset/v1/data/by/address"; //


            // Headers  | 

            // Query    | address chainSymbol groups 
            addQueryParam("address",address);
            addQueryParam("chain_symbol",chainSymbol);
            addQueryParam("groups",groups);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GENERIC_RESPONSE obj(output_string);


            Response<GENERIC_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            GENERIC_RESPONSE
        >
        AssetApi::
        assetV1DataById(
            
            int assetId
            , 
            
            std::string groups
            
        )
        {
            std::string url = basepath + "/asset/v1/data/by/id"; //


            // Headers  | 

            // Query    | assetId groups 
            addQueryParam("asset_id",assetId);
            addQueryParam("groups",groups);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GENERIC_RESPONSE obj(output_string);


            Response<GENERIC_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            GENERIC_RESPONSE
        >
        AssetApi::
        assetV1DataBySymbol(
            
            std::string assetSymbol
            , 
            
            std::string groups
            
        )
        {
            std::string url = basepath + "/asset/v1/data/by/symbol"; //


            // Headers  | 

            // Query    | assetSymbol groups 
            addQueryParam("asset_symbol",assetSymbol);
            addQueryParam("groups",groups);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GENERIC_RESPONSE obj(output_string);


            Response<GENERIC_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            GENERIC_RESPONSE
        >
        AssetApi::
        assetV1TopList(
            
            int page
            , 
            
            int pageSize
            , 
            
            std::string assetType
            , 
            
            std::string sortBy
            , 
            
            std::string sortDirection
            , 
            
            std::string groups
            
        )
        {
            std::string url = basepath + "/asset/v1/top/list"; //


            // Headers  | 

            // Query    | page pageSize assetType sortBy sortDirection groups 
            addQueryParam("page",page);
            addQueryParam("page_size",pageSize);
            addQueryParam("asset_type",assetType);
            addQueryParam("sort_by",sortBy);
            addQueryParam("sort_direction",sortDirection);
            addQueryParam("groups",groups);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GENERIC_RESPONSE obj(output_string);


            Response<GENERIC_RESPONSE> response(obj, httpCode);
            return response;
        }



