#include "NewsApi.h"

using namespace Tiny;



        Response<
            GENERIC_RESPONSE
        >
        NewsApi::
        newsV1ArticleList(
            std::list<std::string> sourceIds
            
            , 
            
            std::string lang
            , 
            std::list<std::string> categories
            
            , 
            std::list<std::string> excludeCategories
            
            , 
            
            int toTs
            
        )
        {
            std::string url = basepath + "/news/v1/article/list"; //


            // Headers  | 

            // Query    | sourceIds lang categories excludeCategories toTs 
            for (auto &x : sourceIds){
                addQueryParam("source_ids", std::string(x));
            }
            addQueryParam("lang",lang);
            for (auto &x : categories){
                addQueryParam("categories", std::string(x));
            }
            for (auto &x : excludeCategories){
                addQueryParam("exclude_categories", std::string(x));
            }
            addQueryParam("to_ts",toTs);

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
        NewsApi::
        newsV1CategoryList(
        )
        {
            std::string url = basepath + "/news/v1/category/list"; //


            // Headers  | 

            // Query    | 

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
        NewsApi::
        newsV1SourceList(
            
            std::string lang
            , 
            
            std::string type
            , 
            
            std::string status
            
        )
        {
            std::string url = basepath + "/news/v1/source/list"; //


            // Headers  | 

            // Query    | lang type status 
            addQueryParam("lang",lang);
            addQueryParam("type",type);
            addQueryParam("status",status);

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



