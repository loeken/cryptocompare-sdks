/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.Error;
import org.openapitools.client.model.GENERICRESPONSE;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for NewsApi
 */
@Disabled
public class NewsApiTest {

    private final NewsApi api = new NewsApi();

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void newsV1ArticleListTest() throws ApiException {
        List<String> sourceIds = null;
        String lang = null;
        List<String> categories = null;
        List<String> excludeCategories = null;
        Integer toTs = null;
        GENERICRESPONSE response = api.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void newsV1CategoryListTest() throws ApiException {
        GENERICRESPONSE response = api.newsV1CategoryList();
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void newsV1SourceListTest() throws ApiException {
        String lang = null;
        String type = null;
        String status = null;
        GENERICRESPONSE response = api.newsV1SourceList(lang, type, status);
        // TODO: test validations
    }

}