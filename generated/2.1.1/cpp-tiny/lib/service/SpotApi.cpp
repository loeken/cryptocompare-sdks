#include "SpotApi.h"

using namespace Tiny;



        Response<
            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
        >
        SpotApi::
        spotV1HistoricalDays(
            
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
            std::string url = basepath + "/spot/v1/historical/days"; //


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




            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_HISTO_DATA_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
        >
        SpotApi::
        spotV1HistoricalHours(
            
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
            std::string url = basepath + "/spot/v1/historical/hours"; //


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




            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_HISTO_DATA_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE
        >
        SpotApi::
        spotV1HistoricalMinutes(
            
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
            std::string url = basepath + "/spot/v1/historical/minutes"; //


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




            SPOT_INSTRUMENT_HISTO_DATA_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_HISTO_DATA_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            GENERIC_RESPONSE
        >
        SpotApi::
        spotV1HistoricalOrderbookL2SnapshotMinute(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int minuteTs
            , 
            
            int depth
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
        )
        {
            std::string url = basepath + "/spot/v1/historical/orderbook/l2/snapshot/minute"; //


            // Headers  | 

            // Query    | market instrument minuteTs depth mappingPriority responseFormat 
            addQueryParam("market",market);
            addQueryParam("instrument",instrument);
            addQueryParam("minute_ts",minuteTs);
            addQueryParam("depth",depth);
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
            SPOT_INSTRUMENT_TRADE_RESPONSE
        >
        SpotApi::
        spotV1HistoricalTrades(
            
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
            std::string url = basepath + "/spot/v1/historical/trades"; //


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




            SPOT_INSTRUMENT_TRADE_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_TRADE_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            SPOT_INSTRUMENT_TRADE_RESPONSE
        >
        SpotApi::
        spotV1HistoricalTradesHour(
            
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
            std::string url = basepath + "/spot/v1/historical/trades/hour"; //


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




            SPOT_INSTRUMENT_TRADE_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_TRADE_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            SPOT_INSTRUMENT_METADATA_RESPONSE
        >
        SpotApi::
        spotV1LatestInstrumentMetadata(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/spot/v1/latest/instrument/metadata"; //


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




            SPOT_INSTRUMENT_METADATA_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_METADATA_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            SPOT_INSTRUMENT_MARKET_DATA_RESPONSE
        >
        SpotApi::
        spotV1LatestTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
        )
        {
            std::string url = basepath + "/spot/v1/latest/tick"; //


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




            SPOT_INSTRUMENT_MARKET_DATA_RESPONSE obj(output_string);


            Response<SPOT_INSTRUMENT_MARKET_DATA_RESPONSE> response(obj, httpCode);
            return response;
        }

        Response<
            GENERIC_RESPONSE
        >
        SpotApi::
        spotV1Markets(
            
            std::string market
            
        )
        {
            std::string url = basepath + "/spot/v1/markets"; //


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
        SpotApi::
        spotV1MarketsInstruments(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/spot/v1/markets/instruments"; //


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
        SpotApi::
        spotV1MarketsInstrumentsUnmapped(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
        )
        {
            std::string url = basepath + "/spot/v1/markets/instruments/unmapped"; //


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



