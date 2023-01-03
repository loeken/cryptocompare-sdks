/**
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

import org.openapitools.client.model.Error;
import org.openapitools.client.model.GENERICRESPONSE;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import org.eclipse.microprofile.rest.client.RestClientBuilder;

import java.net.URL;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry Test
 *
 * API tests for OverviewApi
 */
public class OverviewApiTest {

    private static OverviewApi client;
    private static final String baseUrl = "http://localhost:8080";

    @BeforeAll
    public static void setup() throws MalformedURLException {
        client = RestClientBuilder.newBuilder()
                        .baseUrl(new URL(baseUrl))
                        .register(ApiException.class)
                        .build(OverviewApi.class);
    }

    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1HistoricalMarketcapAllAssetsDaysTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat);
        //assertNotNull(response);
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1HistoricalMarketcapAllAssetsHoursTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat);
        //assertNotNull(response);
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1HistoricalMarketcapFtwAssetsDaysTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat);
        //assertNotNull(response);
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1HistoricalMarketcapFtwAssetsHoursTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat);
        //assertNotNull(response);
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1LatestMarketcapAllTickTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1LatestMarketcapAllTick(groups);
        //assertNotNull(response);
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void overviewV1LatestMarketcapFtwTickTest() throws Exception {
        //GENERICRESPONSE response = client.overviewV1LatestMarketcapFtwTick(groups);
        //assertNotNull(response);
    }
    
}