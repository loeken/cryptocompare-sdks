package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Error
import org.openapitools.model.GENERICRESPONSE

class AssetApi {
    String basePath = "https://data-api.cryptocompare.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def assetV1DataByAddress ( String address, String chainSymbol, String groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/v1/data/by/address"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (address == null) {
            throw new RuntimeException("missing required params address")
        }
        // verify required params are set
        if (chainSymbol == null) {
            throw new RuntimeException("missing required params chainSymbol")
        }

        if (address != null) {
            queryParams.put("address", address)
        }
        if (chainSymbol != null) {
            queryParams.put("chain_symbol", chainSymbol)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def assetV1DataById ( Integer assetId, String groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/v1/data/by/id"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (assetId != null) {
            queryParams.put("asset_id", assetId)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def assetV1DataBySymbol ( String assetSymbol, String groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/v1/data/by/symbol"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetSymbol == null) {
            throw new RuntimeException("missing required params assetSymbol")
        }

        if (assetSymbol != null) {
            queryParams.put("asset_symbol", assetSymbol)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

    def assetV1TopList ( Integer page, Integer pageSize, String assetType, String sortBy, String sortDirection, String groups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/v1/top/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (page != null) {
            queryParams.put("page", page)
        }
        if (pageSize != null) {
            queryParams.put("page_size", pageSize)
        }
        if (assetType != null) {
            queryParams.put("asset_type", assetType)
        }
        if (sortBy != null) {
            queryParams.put("sort_by", sortBy)
        }
        if (sortDirection != null) {
            queryParams.put("sort_direction", sortDirection)
        }
        if (groups != null) {
            queryParams.put("groups", groups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GENERICRESPONSE.class )

    }

}
