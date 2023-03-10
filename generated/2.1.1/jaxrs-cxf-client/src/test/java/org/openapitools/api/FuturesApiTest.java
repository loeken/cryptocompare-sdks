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


package org.openapitools.api;

import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;
import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.*;

import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.client.JAXRSClientFactory;
import org.apache.cxf.jaxrs.client.ClientConfiguration;
import org.apache.cxf.jaxrs.client.WebClient;


import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;




/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * <p>CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * API tests for FuturesApi
 */
public class FuturesApiTest {


    private FuturesApi api;

    @Before
    public void setup() {
        JacksonJsonProvider provider = new JacksonJsonProvider();
        List providers = new ArrayList();
        providers.add(provider);

        api = JAXRSClientFactory.create("https://data-api.cryptocompare.com", FuturesApi.class, providers);
        org.apache.cxf.jaxrs.client.Client client = WebClient.client(api);

        ClientConfiguration config = WebClient.getConfig(client);
    }

    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalDaysTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalFundingRateDaysTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalFundingRateHoursTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalFundingRateMessagesTest() {
        String market = null;
        String instrument = null;
        Integer afterTs = null;
        Integer lastCcseq = null;
        Integer limit = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalFundingRateMessagesHourTest() {
        String market = null;
        String instrument = null;
        Integer hourTs = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalFundingRateMinutesTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalHoursTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalMinutesTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalOpenInterestDaysTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalOpenInterestHoursTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalOpenInterestMessagesTest() {
        String market = null;
        String instrument = null;
        Integer afterTs = null;
        Integer lastCcseq = null;
        Integer limit = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalOpenInterestMessagesHourTest() {
        String market = null;
        String instrument = null;
        Integer hourTs = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalOpenInterestMinutesTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalTradesTest() {
        String market = null;
        String instrument = null;
        Integer afterTs = null;
        Integer lastCcseq = null;
        Integer limit = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1HistoricalTradesHourTest() {
        String market = null;
        String instrument = null;
        Integer hourTs = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1LatestFundingRateTickTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1LatestInstrumentMetadataTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1LatestOpenInterestTickTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1LatestTickTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.futuresV1LatestTick(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1MarketsTest() {
        String market = null;
        //GENERICRESPONSE response = api.futuresV1Markets(market);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1MarketsInstrumentsTest() {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        //GENERICRESPONSE response = api.futuresV1MarketsInstruments(market, instrument, instrumentStatus);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void futuresV1MarketsInstrumentsUnmappedTest() {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        //GENERICRESPONSE response = api.futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1HistoricalDaysTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1HistoricalHoursTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1HistoricalMessagesTest() {
        String market = null;
        String instrument = null;
        Integer afterTs = null;
        Integer lastCcseq = null;
        Integer limit = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1HistoricalMessagesHourTest() {
        String market = null;
        String instrument = null;
        Integer hourTs = null;
        String mappingPriority = null;
        String responseFormat = null;
        Boolean return404OnEmptyResponse = null;
        //GENERICRESPONSE response = api.indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1HistoricalMinutesTest() {
        String market = null;
        String instrument = null;
        List<String> groups = null;
        Integer limit = null;
        Integer toTs = null;
        Integer aggregate = null;
        Boolean fill = null;
        String mappingPriority = null;
        String responseFormat = null;
        //GENERICRESPONSE response = api.indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1LatestInstrumentMetadataTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1LatestTickTest() {
        String market = null;
        List<String> instruments = null;
        List<String> groups = null;
        String mappingPriority = null;
        //GENERICRESPONSE response = api.indexV1LatestTick(market, instruments, groups, mappingPriority);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1MarketsTest() {
        String market = null;
        //GENERICRESPONSE response = api.indexV1Markets(market);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1MarketsInstrumentsTest() {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        //GENERICRESPONSE response = api.indexV1MarketsInstruments(market, instrument, instrumentStatus);
        //assertNotNull(response);
        // TODO: test validations


    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void indexV1MarketsInstrumentsUnmappedTest() {
        String market = null;
        String instrument = null;
        List<String> instrumentStatus = null;
        //GENERICRESPONSE response = api.indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus);
        //assertNotNull(response);
        // TODO: test validations


    }
    
}
