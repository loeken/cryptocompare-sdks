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
 * API tests for FuturesApi
 */
@MicronautTest
public class FuturesApiTest {

    @Inject
    FuturesApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalDaysTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalFundingRateDaysTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalFundingRateDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalFundingRateHoursTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalFundingRateHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalFundingRateMessagesTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer afterTs = 56;
        Integer lastCcseq = 0;
        Integer limit = 100;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalFundingRateMessagesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalFundingRateMessagesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalFundingRateMessagesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalFundingRateMinutesTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalFundingRateMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalHoursTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalMinutesTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalOpenInterestDaysTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalOpenInterestDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalOpenInterestHoursTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalOpenInterestHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalOpenInterestMessagesTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer afterTs = 56;
        Integer lastCcseq = 0;
        Integer limit = 100;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalOpenInterestMessagesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalOpenInterestMessagesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalOpenInterestMessagesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalOpenInterestMinutesTest() {
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
        GENERICRESPONSE body = api.futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the futuresV1HistoricalOpenInterestMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalTradesTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer afterTs = 56;
        Integer lastCcseq = 0;
        Integer limit = 100;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalTradesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1HistoricalTradesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the futuresV1HistoricalTradesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1LatestFundingRateTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the futuresV1LatestFundingRateTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1LatestInstrumentMetadataTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the futuresV1LatestInstrumentMetadataTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1LatestOpenInterestTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the futuresV1LatestOpenInterestTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1LatestTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.futuresV1LatestTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the futuresV1LatestTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1MarketsTest() {
        // given
        String market = "";

        // when
        GENERICRESPONSE body = api.futuresV1Markets(market).block();

        // then
        // TODO implement the futuresV1MarketsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1MarketsInstrumentsTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.futuresV1MarketsInstruments(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the futuresV1MarketsInstrumentsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void futuresV1MarketsInstrumentsUnmappedTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the futuresV1MarketsInstrumentsUnmappedTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1HistoricalDaysTest() {
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
        GENERICRESPONSE body = api.indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexV1HistoricalDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1HistoricalHoursTest() {
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
        GENERICRESPONSE body = api.indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexV1HistoricalHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1HistoricalMessagesTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer afterTs = 56;
        Integer lastCcseq = 0;
        Integer limit = 100;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the indexV1HistoricalMessagesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1HistoricalMessagesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        GENERICRESPONSE body = api.indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the indexV1HistoricalMessagesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1HistoricalMinutesTest() {
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
        GENERICRESPONSE body = api.indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the indexV1HistoricalMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1LatestInstrumentMetadataTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the indexV1LatestInstrumentMetadataTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1LatestTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        GENERICRESPONSE body = api.indexV1LatestTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the indexV1LatestTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1MarketsTest() {
        // given
        String market = "";

        // when
        GENERICRESPONSE body = api.indexV1Markets(market).block();

        // then
        // TODO implement the indexV1MarketsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1MarketsInstrumentsTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.indexV1MarketsInstruments(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the indexV1MarketsInstrumentsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void indexV1MarketsInstrumentsUnmappedTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the indexV1MarketsInstrumentsUnmappedTest()
    }

    
}
