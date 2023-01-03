#include "OverviewApi.h"

using namespace Tiny;



        Response<
            GENERIC_RESPONSE
        >
        OverviewApi::
        overviewV1HistoricalMarketcapAllAssetsDays(
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/overview/v1/historical/marketcap/all/assets/days"; //


            // Headers  | 

            // Query    | groups limit toTs aggregate fill responseFormat 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("response_format",responseFormat);

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
        OverviewApi::
        overviewV1HistoricalMarketcapAllAssetsHours(
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/overview/v1/historical/marketcap/all/assets/hours"; //


            // Headers  | 

            // Query    | groups limit toTs aggregate fill responseFormat 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("response_format",responseFormat);

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
        OverviewApi::
        overviewV1HistoricalMarketcapFtwAssetsDays(
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/overview/v1/historical/marketcap/ftw/assets/days"; //


            // Headers  | 

            // Query    | groups limit toTs aggregate fill responseFormat 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("response_format",responseFormat);

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
        OverviewApi::
        overviewV1HistoricalMarketcapFtwAssetsHours(
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/overview/v1/historical/marketcap/ftw/assets/hours"; //


            // Headers  | 

            // Query    | groups limit toTs aggregate fill responseFormat 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("response_format",responseFormat);

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
        OverviewApi::
        overviewV1LatestMarketcapAllTick(
            std::list<std::string> groups
            
            
        )
        {
            std::string url = basepath + "/overview/v1/latest/marketcap/all/tick"; //


            // Headers  | 

            // Query    | groups 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }

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
        OverviewApi::
        overviewV1LatestMarketcapFtwTick(
            std::list<std::string> groups
            
            
        )
        {
            std::string url = basepath + "/overview/v1/latest/marketcap/ftw/tick"; //


            // Headers  | 

            // Query    | groups 
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }

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



