package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Error
import org.openapitools.model.GENERICRESPONSE

class OverviewApi {
    String basePath = "https://data-api.cryptocompare.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def overviewV1HistoricalMarketcapAllAssetsDays ( List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/historical/marketcap/all/assets/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def overviewV1HistoricalMarketcapAllAssetsHours ( List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/historical/marketcap/all/assets/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def overviewV1HistoricalMarketcapFtwAssetsDays ( List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/historical/marketcap/ftw/assets/days"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def overviewV1HistoricalMarketcapFtwAssetsHours ( List<String> groups, Integer limit, Integer toTs, Integer aggregate, Boolean fill, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/historical/marketcap/ftw/assets/hours"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (responseFormat != null) {
            queryParams.put("response_format", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def overviewV1LatestMarketcapAllTick ( List<String> groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/latest/marketcap/all/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def overviewV1LatestMarketcapFtwTick ( List<String> groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/overview/v1/latest/marketcap/ftw/tick"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

}
