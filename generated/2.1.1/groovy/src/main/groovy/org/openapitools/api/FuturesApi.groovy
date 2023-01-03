package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Error
import org.openapitools.model.GENERICRESPONSE

class FuturesApi {
    String basePath = "https://data-api.cryptocompare.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def futuresV1HistoricalDays ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalFundingRateDays ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/funding-rate/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalFundingRateHours ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/funding-rate/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalFundingRateMessages ( String market, String instrument, Integer afterTs, Integer lastCcseq, Integer limit, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/funding-rate-messages"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (afterTs != null) {
            queryParams.put("after_ts", afterTs)
        }
        if (lastCcseq != null) {
            queryParams.put("last_ccseq", lastCcseq)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalFundingRateMessagesHour ( String market, String instrument, Integer hourTs, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/funding-rate-messages/hour"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (hourTs != null) {
            queryParams.put("hour_ts", hourTs)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalFundingRateMinutes ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/funding-rate/minutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalHours ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalMinutes ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/minutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalOpenInterestDays ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/open-interest/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalOpenInterestHours ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/open-interest/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalOpenInterestMessages ( String market, String instrument, Integer afterTs, Integer lastCcseq, Integer limit, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/open-interest-messages"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (afterTs != null) {
            queryParams.put("after_ts", afterTs)
        }
        if (lastCcseq != null) {
            queryParams.put("last_ccseq", lastCcseq)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalOpenInterestMessagesHour ( String market, String instrument, Integer hourTs, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/open-interest-messages/hour"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (hourTs != null) {
            queryParams.put("hour_ts", hourTs)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalOpenInterestMinutes ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/open-interest/minutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalTrades ( String market, String instrument, Integer afterTs, Integer lastCcseq, Integer limit, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/trades"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (afterTs != null) {
            queryParams.put("after_ts", afterTs)
        }
        if (lastCcseq != null) {
            queryParams.put("last_ccseq", lastCcseq)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1HistoricalTradesHour ( String market, String instrument, Integer hourTs, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/historical/trades/hour"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (hourTs != null) {
            queryParams.put("hour_ts", hourTs)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1LatestFundingRateTick ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/latest/funding-rate/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1LatestInstrumentMetadata ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/latest/instrument/metadata"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1LatestOpenInterestTick ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/latest/open-interest/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1LatestTick ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/latest/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1Markets ( String market, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/markets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1MarketsInstruments ( String market, String instrument, List<String> instrumentStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/markets/instruments"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (instrumentStatus != null) {
            queryParams.put("instrument_status", instrumentStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def futuresV1MarketsInstrumentsUnmapped ( String market, String instrument, List<String> instrumentStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/futures/v1/markets/instruments/unmapped"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (instrumentStatus != null) {
            queryParams.put("instrument_status", instrumentStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1HistoricalDays ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/historical/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1HistoricalHours ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/historical/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1HistoricalMessages ( String market, String instrument, Integer afterTs, Integer lastCcseq, Integer limit, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/historical/messages"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (afterTs != null) {
            queryParams.put("after_ts", afterTs)
        }
        if (lastCcseq != null) {
            queryParams.put("last_ccseq", lastCcseq)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1HistoricalMessagesHour ( String market, String instrument, Integer hourTs, String mappingPriority, String responseFormat, Boolean return404OnEmptyResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/historical/messages/hour"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (hourTs != null) {
            queryParams.put("hour_ts", hourTs)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }
        if (return404OnEmptyResponse != null) {
            queryParams.put("return_404_on_empty_response", return404OnEmptyResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1HistoricalMinutes ( String market, String instrument, List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String mappingPriority, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/historical/minutes"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instrument == null) {
            throw new RuntimeException("missing required params instrument")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }
        if (aggregate != null) {
            queryParams.put("aggregate", aggregate)
        }
        if (fill != null) {
            queryParams.put("fill", fill)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1LatestInstrumentMetadata ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/latest/instrument/metadata"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1LatestTick ( String market, List<String> instruments, List<String> groups, String mappingPriority, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/latest/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (market == null) {
            throw new RuntimeException("missing required params market")
        }
        // verify required params are set
        if (instruments == null) {
            throw new RuntimeException("missing required params instruments")
        }

        if (market != null) {
            queryParams.put("market", market)
        }
        if (instruments != null) {
            queryParams.put("instruments", instruments)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }
        if (mappingPriority != null) {
            queryParams.put("mapping_priority", mappingPriority)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1Markets ( String market, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/markets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1MarketsInstruments ( String market, String instrument, List<String> instrumentStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/markets/instruments"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (instrumentStatus != null) {
            queryParams.put("instrument_status", instrumentStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def indexV1MarketsInstrumentsUnmapped ( String market, String instrument, List<String> instrumentStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/index/v1/markets/instruments/unmapped"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (market != null) {
            queryParams.put("market", market)
        }
        if (instrument != null) {
            queryParams.put("instrument", instrument)
        }
        if (instrumentStatus != null) {
            queryParams.put("instrument_status", instrumentStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

}
