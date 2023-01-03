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
 * API tests for OverviewApi
 */
@MicronautTest
public class OverviewApiTest {

    @Inject
    OverviewApi api;

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1HistoricalMarketcapAllAssetsDaysTest() {
        // given
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat).block();

        // then
        // TODO implement the overviewV1HistoricalMarketcapAllAssetsDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1HistoricalMarketcapAllAssetsHoursTest() {
        // given
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat).block();

        // then
        // TODO implement the overviewV1HistoricalMarketcapAllAssetsHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1HistoricalMarketcapFtwAssetsDaysTest() {
        // given
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat).block();

        // then
        // TODO implement the overviewV1HistoricalMarketcapFtwAssetsDaysTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1HistoricalMarketcapFtwAssetsHoursTest() {
        // given
        List<String> groups = Arrays.asList("example");
        Integer limit = 30;
        Integer toTs = 56;
        Integer aggregate = 1;
        Boolean fill = true;
        String responseFormat = "JSON";

        // when
        GENERICRESPONSE body = api.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat).block();

        // then
        // TODO implement the overviewV1HistoricalMarketcapFtwAssetsHoursTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1LatestMarketcapAllTickTest() {
        // given
        List<String> groups = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.overviewV1LatestMarketcapAllTick(groups).block();

        // then
        // TODO implement the overviewV1LatestMarketcapAllTickTest()
    }

    
    /**
     * 
     */
    @Test
    @Disabled("Not Implemented")
    public void overviewV1LatestMarketcapFtwTickTest() {
        // given
        List<String> groups = Arrays.asList("example");

        // when
        GENERICRESPONSE body = api.overviewV1LatestMarketcapFtwTick(groups).block();

        // then
        // TODO implement the overviewV1LatestMarketcapFtwTickTest()
    }

    
}
