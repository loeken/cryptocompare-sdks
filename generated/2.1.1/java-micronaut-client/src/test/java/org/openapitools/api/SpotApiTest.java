package org.openapitools.api;

import org.openapitools.model.Error;
import org.openapitools.model.GENERICRESPONSE;
import org.openapitools.model.SPOTINSTRUMENTHISTODATARESPONSE;
import org.openapitools.model.SPOTINSTRUMENTMARKETDATARESPONSE;
import org.openapitools.model.SPOTINSTRUMENTMETADATARESPONSE;
import org.openapitools.model.SPOTINSTRUMENTTRADERESPONSE;
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
 * API tests for SpotApi
 */
@MicronautTest
public class SpotApiTest {

    @Inject
    SpotApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalDaysTest() {
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
        SPOTINSTRUMENTHISTODATARESPONSE body = api.spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the spotV1HistoricalDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalHoursTest() {
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
        SPOTINSTRUMENTHISTODATARESPONSE body = api.spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the spotV1HistoricalHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalMinutesTest() {
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
        SPOTINSTRUMENTHISTODATARESPONSE body = api.spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat).block();

        // then
        // TODO implement the spotV1HistoricalMinutesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalOrderbookL2SnapshotMinuteTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer minuteTs = 56;
        Integer depth = 50;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat).block();

        // then
        // TODO implement the spotV1HistoricalOrderbookL2SnapshotMinuteTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalTradesTest() {
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
        SPOTINSTRUMENTTRADERESPONSE body = api.spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the spotV1HistoricalTradesTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1HistoricalTradesHourTest() {
        // given
        String market = "example";
        String instrument = "example";
        Integer hourTs = 56;
        String mappingPriority = "CHECK_MAPPED_FIRST";
        String responseFormat = "JSON";
        Boolean return404OnEmptyResponse = false;

        // when
        SPOTINSTRUMENTTRADERESPONSE body = api.spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse).block();

        // then
        // TODO implement the spotV1HistoricalTradesHourTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1LatestInstrumentMetadataTest() {
        // given
        String market = "coinbase";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        SPOTINSTRUMENTMETADATARESPONSE body = api.spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the spotV1LatestInstrumentMetadataTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1LatestTickTest() {
        // given
        String market = "example";
        List<String> instruments = Arrays.asList("example");
        List<String> groups = Arrays.asList("example");
        String mappingPriority = "CHECK_MAPPED_FIRST";

        // when
        SPOTINSTRUMENTMARKETDATARESPONSE body = api.spotV1LatestTick(market, instruments, groups, mappingPriority).block();

        // then
        // TODO implement the spotV1LatestTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1MarketsTest() {
        // given
        String market = "";

        // when
        GENERICRESPONSE body = api.spotV1Markets(market).block();

        // then
        // TODO implement the spotV1MarketsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1MarketsInstrumentsTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.spotV1MarketsInstruments(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the spotV1MarketsInstrumentsTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void spotV1MarketsInstrumentsUnmappedTest() {
        // given
        String market = "";
        String instrument = "";
        List<String> instrumentStatus = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus).block();

        // then
        // TODO implement the spotV1MarketsInstrumentsUnmappedTest()
    }

    
}
