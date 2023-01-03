package org.openapitools.api;

import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import jakarta.inject.Inject;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashSet;


/**
 * API tests for ReferenceRatesApi
 */
@MicronautTest
public class ReferenceRatesApiTest {

    @Inject
    ReferenceRatesApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1HistoricalDaysTest() {
        // given
        String market = "example";
        String instrument = "example";
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexCcV1HistoricalDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1HistoricalHoursTest() {
        // given
        String market = "example";
        String instrument = "example";
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexCcV1HistoricalHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1HistoricalMessagesTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer afterTs = 56;
        Integer lastCcseq = 0;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        Integer limit = 100;
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the indexCcV1HistoricalMessagesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1HistoricalMessagesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the indexCcV1HistoricalMessagesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1HistoricalMinutesTest() {
        // given
        String market = "example";
        String instrument = "example";
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexCcV1HistoricalMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1LatestInstrumentMetadataTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the indexCcV1LatestInstrumentMetadataTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1LatestTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.indexCcV1LatestTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the indexCcV1LatestTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1MarketsTest() {
        // given
        String market = "";

        // when
        GENERICRESPONSE body = api.indexCcV1Markets(market).block();

        // then
        // TODO implement the indexCcV1MarketsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1MarketsInstrumentsTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.indexCcV1MarketsInstruments(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the indexCcV1MarketsInstrumentsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexCcV1MarketsInstrumentsUnmappedTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the indexCcV1MarketsInstrumentsUnmappedTest()
    }

    
}
