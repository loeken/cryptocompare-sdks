#include "FuturesApi.h"

using namespace Tiny;



        Response<
            GENERIC_RESPONSE
        >
        FuturesApi::
        futuresV1HistoricalDays(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/days"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalFundingRateDays(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/funding-rate/days"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalFundingRateHours(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/funding-rate/hours"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalFundingRateMessages(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int afterTs
            , 
            
            int lastCcseq
            , 
            
            int limit
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/funding-rate-messages"; //


            // Headers  | 

            // Query    | market instrument afterTs lastCcseq limit mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("after_ts",afterTs);
            addQueryParam("last_ccseq",lastCcseq);
            addQueryParam("limit",limit);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1HistoricalFundingRateMessagesHour(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int hourTs
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/funding-rate-messages/hour"; //


            // Headers  | 

            // Query    | market instrument hourTs mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("hour_ts",hourTs);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1HistoricalFundingRateMinutes(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/funding-rate/minutes"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalHours(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/hours"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalMinutes(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/minutes"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalOpenInterestDays(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/open-interest/days"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalOpenInterestHours(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/open-interest/hours"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalOpenInterestMessages(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int afterTs
            , 
            
            int lastCcseq
            , 
            
            int limit
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/open-interest-messages"; //


            // Headers  | 

            // Query    | market instrument afterTs lastCcseq limit mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("after_ts",afterTs);
            addQueryParam("last_ccseq",lastCcseq);
            addQueryParam("limit",limit);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1HistoricalOpenInterestMessagesHour(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int hourTs
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/open-interest-messages/hour"; //


            // Headers  | 

            // Query    | market instrument hourTs mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("hour_ts",hourTs);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1HistoricalOpenInterestMinutes(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/open-interest/minutes"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        futuresV1HistoricalTrades(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int afterTs
            , 
            
            int lastCcseq
            , 
            
            int limit
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/trades"; //


            // Headers  | 

            // Query    | market instrument afterTs lastCcseq limit mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("after_ts",afterTs);
            addQueryParam("last_ccseq",lastCcseq);
            addQueryParam("limit",limit);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1HistoricalTradesHour(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int hourTs
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/futures/v1/historical/trades/hour"; //


            // Headers  | 

            // Query    | market instrument hourTs mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("hour_ts",hourTs);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        futuresV1LatestFundingRateTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/futures/v1/latest/funding-rate/tick"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        futuresV1LatestInstrumentMetadata(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/futures/v1/latest/instrument/metadata"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        futuresV1LatestOpenInterestTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/futures/v1/latest/open-interest/tick"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        futuresV1LatestTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/futures/v1/latest/tick"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        futuresV1Markets(
            
            std::string market
            
        )
        {
            std::string url = basepath + "/futures/v1/markets"; //


            // Headers  | 

            // Query    | market 
            addQueryParam("market",market);

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
        FuturesApi::
        futuresV1MarketsInstruments(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/futures/v1/markets/instruments"; //


            // Headers  | 

            // Query    | market instrument instrumentStatus 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : instrumentStatus){
                addQueryParam("instrument_status", std::string(x));
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
        FuturesApi::
        futuresV1MarketsInstrumentsUnmapped(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/futures/v1/markets/instruments/unmapped"; //


            // Headers  | 

            // Query    | market instrument instrumentStatus 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : instrumentStatus){
                addQueryParam("instrument_status", std::string(x));
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
        FuturesApi::
        indexV1HistoricalDays(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/index/v1/historical/days"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        indexV1HistoricalHours(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/index/v1/historical/hours"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        indexV1HistoricalMessages(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int afterTs
            , 
            
            int lastCcseq
            , 
            
            int limit
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/index/v1/historical/messages"; //


            // Headers  | 

            // Query    | market instrument afterTs lastCcseq limit mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("after_ts",afterTs);
            addQueryParam("last_ccseq",lastCcseq);
            addQueryParam("limit",limit);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        indexV1HistoricalMessagesHour(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int hourTs
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
        )
        {
            std::string url = basepath + "/index/v1/historical/messages/hour"; //


            // Headers  | 

            // Query    | market instrument hourTs mappingPriority responseFormat return404OnEmptyResponse 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("hour_ts",hourTs);
            addQueryParam("mapping_priority",mappingPriority);
            addQueryParam("response_format",responseFormat);
            addQueryParam("return_404_on_empty_response",return404OnEmptyResponse);

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
        FuturesApi::
        indexV1HistoricalMinutes(
            
            std::string market
            , 
            
            std::string instrument
            , 
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
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/index/v1/historical/minutes"; //


            // Headers  | 

            // Query    | market instrument groups limit toTs aggregate fill mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("limit",limit);
            addQueryParam("to_ts",toTs);
            addQueryParam("aggregate",aggregate);
            addQueryParam("fill",fill);
            addQueryParam("mapping_priority",mappingPriority);
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
        FuturesApi::
        indexV1LatestInstrumentMetadata(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/index/v1/latest/instrument/metadata"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        indexV1LatestTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/index/v1/latest/tick"; //


            // Headers  | 

            // Query    | market instruments groups mappingPriority 
            addQueryParam("market",market);
            for (auto &x : instruments){
                addQueryParam("instruments", std::string(x));
            }
            for (auto &x : groups){
                addQueryParam("groups", std::string(x));
            }
            addQueryParam("mapping_priority",mappingPriority);

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
        FuturesApi::
        indexV1Markets(
            
            std::string market
            
        )
        {
            std::string url = basepath + "/index/v1/markets"; //


            // Headers  | 

            // Query    | market 
            addQueryParam("market",market);

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
        FuturesApi::
        indexV1MarketsInstruments(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/index/v1/markets/instruments"; //


            // Headers  | 

            // Query    | market instrument instrumentStatus 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : instrumentStatus){
                addQueryParam("instrument_status", std::string(x));
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
        FuturesApi::
        indexV1MarketsInstrumentsUnmapped(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/index/v1/markets/instruments/unmapped"; //


            // Headers  | 

            // Query    | market instrument instrumentStatus 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            for (auto &x : instrumentStatus){
                addQueryParam("instrument_status", std::string(x));
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



