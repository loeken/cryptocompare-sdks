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
 * API tests for ReferenceRatesApi
 */
@Disabled
public class ReferenceRatesApiTest {

    private final ReferenceRatesApi api = new ReferenceRatesApi();

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1HistoricalDaysTest() throws ApiException {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        GENERICRESPONSE response = api.indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1HistoricalHoursTest() throws ApiException {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        GENERICRESPONSE response = api.indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1HistoricalMessagesTest() throws ApiException {
        String market = null;
        String instrument = null;
        Integer afterTs = null;
        Integer lastCcseq = null;
        String mappingPriority = null;
        Integer limit = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        GENERICRESPONSE response = api.indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1HistoricalMessagesHourTest() throws ApiException {
        String market = null;
        String instrument = null;
        Integer hourTs = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        GENERICRESPONSE response = api.indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1HistoricalMinutesTest() throws ApiException {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        GENERICRESPONSE response = api.indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1LatestInstrumentMetadataTest() throws ApiException {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        GENERICRESPONSE response = api.indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1LatestTickTest() throws ApiException {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        GENERICRESPONSE response = api.indexCcV1LatestTick(market, instruments, groups, mappingPriority);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1MarketsTest() throws ApiException {
        String market = null;
        GENERICRESPONSE response = api.indexCcV1Markets(market);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1MarketsInstrumentsTest() throws ApiException {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        GENERICRESPONSE response = api.indexCcV1MarketsInstruments(market, instrument, instrumentStatus);
        // TODO: test validations
    }

    /**
     * @throws ApiException if the Api call fails
     */
    @Test
    public void indexCcV1MarketsInstrumentsUnmappedTest() throws ApiException {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        GENERICRESPONSE response = api.indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus);
        // TODO: test validations
    }

}
