package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Error
import org.openapitools.model.GENERICRESPONSE

class NewsApi {
    String basePath = "https://data-api.cryptocompare.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def newsV1ArticleList ( List<String> sourceIds, String lang, List<String> categories, List<String> excludeCategories, Integer toTs, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/news/v1/article/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (sourceIds != null) {
            queryParams.put("source_ids", sourceIds)
        }
        if (lang != null) {
            queryParams.put("lang", lang)
        }
        if (categories != null) {
            queryParams.put("categories", categories)
        }
        if (excludeCategories != null) {
            queryParams.put("exclude_categories", excludeCategories)
        }
        if (toTs != null) {
            queryParams.put("to_ts", toTs)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def newsV1CategoryList ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/news/v1/category/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def newsV1SourceList ( String lang, String type, String status, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/news/v1/source/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (lang != null) {
            queryParams.put("lang", lang)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (status != null) {
            queryParams.put("status", status)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

}
