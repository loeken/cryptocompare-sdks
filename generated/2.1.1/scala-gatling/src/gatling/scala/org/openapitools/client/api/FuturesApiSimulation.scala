package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class FuturesApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("https://data-api.cryptocompare.com")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val futuresV1HistoricalDaysPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalDays") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalFundingRateDaysPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalFundingRateDays") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalFundingRateHoursPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalFundingRateHours") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalFundingRateMessagesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalFundingRateMessages") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalFundingRateMessagesHourPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalFundingRateMessagesHour") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalFundingRateMinutesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalFundingRateMinutes") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalHoursPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalHours") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalMinutesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalMinutes") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalOpenInterestDaysPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalOpenInterestDays") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalOpenInterestHoursPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalOpenInterestHours") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalOpenInterestMessagesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalOpenInterestMessages") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalOpenInterestMessagesHourPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalOpenInterestMessagesHour") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalOpenInterestMinutesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalOpenInterestMinutes") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalTradesPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalTrades") * rateMultiplier * instanceMultiplier
    val futuresV1HistoricalTradesHourPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1HistoricalTradesHour") * rateMultiplier * instanceMultiplier
    val futuresV1LatestFundingRateTickPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1LatestFundingRateTick") * rateMultiplier * instanceMultiplier
    val futuresV1LatestInstrumentMetadataPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1LatestInstrumentMetadata") * rateMultiplier * instanceMultiplier
    val futuresV1LatestOpenInterestTickPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1LatestOpenInterestTick") * rateMultiplier * instanceMultiplier
    val futuresV1LatestTickPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1LatestTick") * rateMultiplier * instanceMultiplier
    val futuresV1MarketsPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1Markets") * rateMultiplier * instanceMultiplier
    val futuresV1MarketsInstrumentsPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1MarketsInstruments") * rateMultiplier * instanceMultiplier
    val futuresV1MarketsInstrumentsUnmappedPerSecond = config.getDouble("performance.operationsPerSecond.futuresV1MarketsInstrumentsUnmapped") * rateMultiplier * instanceMultiplier
    val indexV1HistoricalDaysPerSecond = config.getDouble("performance.operationsPerSecond.indexV1HistoricalDays") * rateMultiplier * instanceMultiplier
    val indexV1HistoricalHoursPerSecond = config.getDouble("performance.operationsPerSecond.indexV1HistoricalHours") * rateMultiplier * instanceMultiplier
    val indexV1HistoricalMessagesPerSecond = config.getDouble("performance.operationsPerSecond.indexV1HistoricalMessages") * rateMultiplier * instanceMultiplier
    val indexV1HistoricalMessagesHourPerSecond = config.getDouble("performance.operationsPerSecond.indexV1HistoricalMessagesHour") * rateMultiplier * instanceMultiplier
    val indexV1HistoricalMinutesPerSecond = config.getDouble("performance.operationsPerSecond.indexV1HistoricalMinutes") * rateMultiplier * instanceMultiplier
    val indexV1LatestInstrumentMetadataPerSecond = config.getDouble("performance.operationsPerSecond.indexV1LatestInstrumentMetadata") * rateMultiplier * instanceMultiplier
    val indexV1LatestTickPerSecond = config.getDouble("performance.operationsPerSecond.indexV1LatestTick") * rateMultiplier * instanceMultiplier
    val indexV1MarketsPerSecond = config.getDouble("performance.operationsPerSecond.indexV1Markets") * rateMultiplier * instanceMultiplier
    val indexV1MarketsInstrumentsPerSecond = config.getDouble("performance.operationsPerSecond.indexV1MarketsInstruments") * rateMultiplier * instanceMultiplier
    val indexV1MarketsInstrumentsUnmappedPerSecond = config.getDouble("performance.operationsPerSecond.indexV1MarketsInstrumentsUnmapped") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val futures_v1_historical_daysQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalDays-queryParams.csv").random
    val futures_v1_historical_funding_rate_daysQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalFundingRateDays-queryParams.csv").random
    val futures_v1_historical_funding_rate_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalFundingRateHours-queryParams.csv").random
    val futures_v1_historical_funding_rate_messagesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalFundingRateMessages-queryParams.csv").random
    val futures_v1_historical_funding_rate_messages_hourQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalFundingRateMessagesHour-queryParams.csv").random
    val futures_v1_historical_funding_rate_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalFundingRateMinutes-queryParams.csv").random
    val futures_v1_historical_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalHours-queryParams.csv").random
    val futures_v1_historical_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalMinutes-queryParams.csv").random
    val futures_v1_historical_open_interest_daysQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalOpenInterestDays-queryParams.csv").random
    val futures_v1_historical_open_interest_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalOpenInterestHours-queryParams.csv").random
    val futures_v1_historical_open_interest_messagesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalOpenInterestMessages-queryParams.csv").random
    val futures_v1_historical_open_interest_messages_hourQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalOpenInterestMessagesHour-queryParams.csv").random
    val futures_v1_historical_open_interest_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalOpenInterestMinutes-queryParams.csv").random
    val futures_v1_historical_tradesQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalTrades-queryParams.csv").random
    val futures_v1_historical_trades_hourQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1HistoricalTradesHour-queryParams.csv").random
    val futures_v1_latest_funding_rate_tickQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1LatestFundingRateTick-queryParams.csv").random
    val futures_v1_latest_instrument_metadataQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1LatestInstrumentMetadata-queryParams.csv").random
    val futures_v1_latest_open_interest_tickQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1LatestOpenInterestTick-queryParams.csv").random
    val futures_v1_latest_tickQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1LatestTick-queryParams.csv").random
    val futures_v1_marketsQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1Markets-queryParams.csv").random
    val futures_v1_markets_instrumentsQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1MarketsInstruments-queryParams.csv").random
    val futures_v1_markets_instruments_unmappedQUERYFeeder = csv(userDataDirectory + File.separator + "futuresV1MarketsInstrumentsUnmapped-queryParams.csv").random
    val index_v1_historical_daysQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1HistoricalDays-queryParams.csv").random
    val index_v1_historical_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1HistoricalHours-queryParams.csv").random
    val index_v1_historical_messagesQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1HistoricalMessages-queryParams.csv").random
    val index_v1_historical_messages_hourQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1HistoricalMessagesHour-queryParams.csv").random
    val index_v1_historical_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1HistoricalMinutes-queryParams.csv").random
    val index_v1_latest_instrument_metadataQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1LatestInstrumentMetadata-queryParams.csv").random
    val index_v1_latest_tickQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1LatestTick-queryParams.csv").random
    val index_v1_marketsQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1Markets-queryParams.csv").random
    val index_v1_markets_instrumentsQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1MarketsInstruments-queryParams.csv").random
    val index_v1_markets_instruments_unmappedQUERYFeeder = csv(userDataDirectory + File.separator + "indexV1MarketsInstrumentsUnmapped-queryParams.csv").random

    // Setup all scenarios

    
    val scnfuturesV1HistoricalDays = scenario("futuresV1HistoricalDaysSimulation")
        .feed(futures_v1_historical_daysQUERYFeeder)
        .exec(http("futuresV1HistoricalDays")
        .httpRequest("GET","/futures/v1/historical/days")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("limit","${limit}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalDays.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalFundingRateDays = scenario("futuresV1HistoricalFundingRateDaysSimulation")
        .feed(futures_v1_historical_funding_rate_daysQUERYFeeder)
        .exec(http("futuresV1HistoricalFundingRateDays")
        .httpRequest("GET","/futures/v1/historical/funding-rate/days")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("groups","${groups}")
        .queryParam("limit","${limit}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalFundingRateDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalFundingRateDays.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalFundingRateDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalFundingRateDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalFundingRateDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalFundingRateHours = scenario("futuresV1HistoricalFundingRateHoursSimulation")
        .feed(futures_v1_historical_funding_rate_hoursQUERYFeeder)
        .exec(http("futuresV1HistoricalFundingRateHours")
        .httpRequest("GET","/futures/v1/historical/funding-rate/hours")
        .queryParam("limit","${limit}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("groups","${groups}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalFundingRateHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalFundingRateHours.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalFundingRateHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalFundingRateHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalFundingRateHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalFundingRateMessages = scenario("futuresV1HistoricalFundingRateMessagesSimulation")
        .feed(futures_v1_historical_funding_rate_messagesQUERYFeeder)
        .exec(http("futuresV1HistoricalFundingRateMessages")
        .httpRequest("GET","/futures/v1/historical/funding-rate-messages")
        .queryParam("after_ts","${after_ts}")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("limit","${limit}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalFundingRateMessages with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalFundingRateMessages.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalFundingRateMessagesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalFundingRateMessagesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalFundingRateMessagesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalFundingRateMessagesHour = scenario("futuresV1HistoricalFundingRateMessagesHourSimulation")
        .feed(futures_v1_historical_funding_rate_messages_hourQUERYFeeder)
        .exec(http("futuresV1HistoricalFundingRateMessagesHour")
        .httpRequest("GET","/futures/v1/historical/funding-rate-messages/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalFundingRateMessagesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalFundingRateMessagesHour.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalFundingRateMessagesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalFundingRateMessagesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalFundingRateMessagesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalFundingRateMinutes = scenario("futuresV1HistoricalFundingRateMinutesSimulation")
        .feed(futures_v1_historical_funding_rate_minutesQUERYFeeder)
        .exec(http("futuresV1HistoricalFundingRateMinutes")
        .httpRequest("GET","/futures/v1/historical/funding-rate/minutes")
        .queryParam("limit","${limit}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("groups","${groups}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalFundingRateMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalFundingRateMinutes.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalFundingRateMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalFundingRateMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalFundingRateMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalHours = scenario("futuresV1HistoricalHoursSimulation")
        .feed(futures_v1_historical_hoursQUERYFeeder)
        .exec(http("futuresV1HistoricalHours")
        .httpRequest("GET","/futures/v1/historical/hours")
        .queryParam("groups","${groups}")
        .queryParam("limit","${limit}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalHours.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalMinutes = scenario("futuresV1HistoricalMinutesSimulation")
        .feed(futures_v1_historical_minutesQUERYFeeder)
        .exec(http("futuresV1HistoricalMinutes")
        .httpRequest("GET","/futures/v1/historical/minutes")
        .queryParam("groups","${groups}")
        .queryParam("limit","${limit}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalMinutes.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalOpenInterestDays = scenario("futuresV1HistoricalOpenInterestDaysSimulation")
        .feed(futures_v1_historical_open_interest_daysQUERYFeeder)
        .exec(http("futuresV1HistoricalOpenInterestDays")
        .httpRequest("GET","/futures/v1/historical/open-interest/days")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("limit","${limit}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalOpenInterestDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalOpenInterestDays.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalOpenInterestDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalOpenInterestDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalOpenInterestDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalOpenInterestHours = scenario("futuresV1HistoricalOpenInterestHoursSimulation")
        .feed(futures_v1_historical_open_interest_hoursQUERYFeeder)
        .exec(http("futuresV1HistoricalOpenInterestHours")
        .httpRequest("GET","/futures/v1/historical/open-interest/hours")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalOpenInterestHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalOpenInterestHours.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalOpenInterestHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalOpenInterestHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalOpenInterestHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalOpenInterestMessages = scenario("futuresV1HistoricalOpenInterestMessagesSimulation")
        .feed(futures_v1_historical_open_interest_messagesQUERYFeeder)
        .exec(http("futuresV1HistoricalOpenInterestMessages")
        .httpRequest("GET","/futures/v1/historical/open-interest-messages")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("after_ts","${after_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("limit","${limit}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalOpenInterestMessages with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalOpenInterestMessages.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalOpenInterestMessagesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalOpenInterestMessagesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalOpenInterestMessagesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalOpenInterestMessagesHour = scenario("futuresV1HistoricalOpenInterestMessagesHourSimulation")
        .feed(futures_v1_historical_open_interest_messages_hourQUERYFeeder)
        .exec(http("futuresV1HistoricalOpenInterestMessagesHour")
        .httpRequest("GET","/futures/v1/historical/open-interest-messages/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalOpenInterestMessagesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalOpenInterestMessagesHour.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalOpenInterestMessagesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalOpenInterestMessagesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalOpenInterestMessagesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalOpenInterestMinutes = scenario("futuresV1HistoricalOpenInterestMinutesSimulation")
        .feed(futures_v1_historical_open_interest_minutesQUERYFeeder)
        .exec(http("futuresV1HistoricalOpenInterestMinutes")
        .httpRequest("GET","/futures/v1/historical/open-interest/minutes")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalOpenInterestMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalOpenInterestMinutes.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalOpenInterestMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalOpenInterestMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalOpenInterestMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalTrades = scenario("futuresV1HistoricalTradesSimulation")
        .feed(futures_v1_historical_tradesQUERYFeeder)
        .exec(http("futuresV1HistoricalTrades")
        .httpRequest("GET","/futures/v1/historical/trades")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("after_ts","${after_ts}")
        .queryParam("limit","${limit}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalTrades with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalTrades.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalTradesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalTradesPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalTradesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1HistoricalTradesHour = scenario("futuresV1HistoricalTradesHourSimulation")
        .feed(futures_v1_historical_trades_hourQUERYFeeder)
        .exec(http("futuresV1HistoricalTradesHour")
        .httpRequest("GET","/futures/v1/historical/trades/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnfuturesV1HistoricalTradesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1HistoricalTradesHour.inject(
        rampUsersPerSec(1) to(futuresV1HistoricalTradesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1HistoricalTradesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1HistoricalTradesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1LatestFundingRateTick = scenario("futuresV1LatestFundingRateTickSimulation")
        .feed(futures_v1_latest_funding_rate_tickQUERYFeeder)
        .exec(http("futuresV1LatestFundingRateTick")
        .httpRequest("GET","/futures/v1/latest/funding-rate/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnfuturesV1LatestFundingRateTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1LatestFundingRateTick.inject(
        rampUsersPerSec(1) to(futuresV1LatestFundingRateTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1LatestFundingRateTickPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1LatestFundingRateTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1LatestInstrumentMetadata = scenario("futuresV1LatestInstrumentMetadataSimulation")
        .feed(futures_v1_latest_instrument_metadataQUERYFeeder)
        .exec(http("futuresV1LatestInstrumentMetadata")
        .httpRequest("GET","/futures/v1/latest/instrument/metadata")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnfuturesV1LatestInstrumentMetadata with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1LatestInstrumentMetadata.inject(
        rampUsersPerSec(1) to(futuresV1LatestInstrumentMetadataPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1LatestInstrumentMetadataPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1LatestInstrumentMetadataPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1LatestOpenInterestTick = scenario("futuresV1LatestOpenInterestTickSimulation")
        .feed(futures_v1_latest_open_interest_tickQUERYFeeder)
        .exec(http("futuresV1LatestOpenInterestTick")
        .httpRequest("GET","/futures/v1/latest/open-interest/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnfuturesV1LatestOpenInterestTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1LatestOpenInterestTick.inject(
        rampUsersPerSec(1) to(futuresV1LatestOpenInterestTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1LatestOpenInterestTickPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1LatestOpenInterestTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1LatestTick = scenario("futuresV1LatestTickSimulation")
        .feed(futures_v1_latest_tickQUERYFeeder)
        .exec(http("futuresV1LatestTick")
        .httpRequest("GET","/futures/v1/latest/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnfuturesV1LatestTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1LatestTick.inject(
        rampUsersPerSec(1) to(futuresV1LatestTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1LatestTickPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1LatestTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1Markets = scenario("futuresV1MarketsSimulation")
        .feed(futures_v1_marketsQUERYFeeder)
        .exec(http("futuresV1Markets")
        .httpRequest("GET","/futures/v1/markets")
        .queryParam("market","${market}")
)

    // Run scnfuturesV1Markets with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1Markets.inject(
        rampUsersPerSec(1) to(futuresV1MarketsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1MarketsPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1MarketsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1MarketsInstruments = scenario("futuresV1MarketsInstrumentsSimulation")
        .feed(futures_v1_markets_instrumentsQUERYFeeder)
        .exec(http("futuresV1MarketsInstruments")
        .httpRequest("GET","/futures/v1/markets/instruments")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
        .queryParam("instrument","${instrument}")
)

    // Run scnfuturesV1MarketsInstruments with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1MarketsInstruments.inject(
        rampUsersPerSec(1) to(futuresV1MarketsInstrumentsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1MarketsInstrumentsPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1MarketsInstrumentsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnfuturesV1MarketsInstrumentsUnmapped = scenario("futuresV1MarketsInstrumentsUnmappedSimulation")
        .feed(futures_v1_markets_instruments_unmappedQUERYFeeder)
        .exec(http("futuresV1MarketsInstrumentsUnmapped")
        .httpRequest("GET","/futures/v1/markets/instruments/unmapped")
        .queryParam("instrument","${instrument}")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
)

    // Run scnfuturesV1MarketsInstrumentsUnmapped with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnfuturesV1MarketsInstrumentsUnmapped.inject(
        rampUsersPerSec(1) to(futuresV1MarketsInstrumentsUnmappedPerSecond) during(rampUpSeconds),
        constantUsersPerSec(futuresV1MarketsInstrumentsUnmappedPerSecond) during(durationSeconds),
        rampUsersPerSec(futuresV1MarketsInstrumentsUnmappedPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1HistoricalDays = scenario("indexV1HistoricalDaysSimulation")
        .feed(index_v1_historical_daysQUERYFeeder)
        .exec(http("indexV1HistoricalDays")
        .httpRequest("GET","/index/v1/historical/days")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("limit","${limit}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexV1HistoricalDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1HistoricalDays.inject(
        rampUsersPerSec(1) to(indexV1HistoricalDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1HistoricalDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1HistoricalDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1HistoricalHours = scenario("indexV1HistoricalHoursSimulation")
        .feed(index_v1_historical_hoursQUERYFeeder)
        .exec(http("indexV1HistoricalHours")
        .httpRequest("GET","/index/v1/historical/hours")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexV1HistoricalHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1HistoricalHours.inject(
        rampUsersPerSec(1) to(indexV1HistoricalHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1HistoricalHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1HistoricalHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1HistoricalMessages = scenario("indexV1HistoricalMessagesSimulation")
        .feed(index_v1_historical_messagesQUERYFeeder)
        .exec(http("indexV1HistoricalMessages")
        .httpRequest("GET","/index/v1/historical/messages")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("after_ts","${after_ts}")
        .queryParam("limit","${limit}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexV1HistoricalMessages with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1HistoricalMessages.inject(
        rampUsersPerSec(1) to(indexV1HistoricalMessagesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1HistoricalMessagesPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1HistoricalMessagesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1HistoricalMessagesHour = scenario("indexV1HistoricalMessagesHourSimulation")
        .feed(index_v1_historical_messages_hourQUERYFeeder)
        .exec(http("indexV1HistoricalMessagesHour")
        .httpRequest("GET","/index/v1/historical/messages/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexV1HistoricalMessagesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1HistoricalMessagesHour.inject(
        rampUsersPerSec(1) to(indexV1HistoricalMessagesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1HistoricalMessagesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1HistoricalMessagesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1HistoricalMinutes = scenario("indexV1HistoricalMinutesSimulation")
        .feed(index_v1_historical_minutesQUERYFeeder)
        .exec(http("indexV1HistoricalMinutes")
        .httpRequest("GET","/index/v1/historical/minutes")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexV1HistoricalMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1HistoricalMinutes.inject(
        rampUsersPerSec(1) to(indexV1HistoricalMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1HistoricalMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1HistoricalMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1LatestInstrumentMetadata = scenario("indexV1LatestInstrumentMetadataSimulation")
        .feed(index_v1_latest_instrument_metadataQUERYFeeder)
        .exec(http("indexV1LatestInstrumentMetadata")
        .httpRequest("GET","/index/v1/latest/instrument/metadata")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnindexV1LatestInstrumentMetadata with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1LatestInstrumentMetadata.inject(
        rampUsersPerSec(1) to(indexV1LatestInstrumentMetadataPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1LatestInstrumentMetadataPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1LatestInstrumentMetadataPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1LatestTick = scenario("indexV1LatestTickSimulation")
        .feed(index_v1_latest_tickQUERYFeeder)
        .exec(http("indexV1LatestTick")
        .httpRequest("GET","/index/v1/latest/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnindexV1LatestTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1LatestTick.inject(
        rampUsersPerSec(1) to(indexV1LatestTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1LatestTickPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1LatestTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1Markets = scenario("indexV1MarketsSimulation")
        .feed(index_v1_marketsQUERYFeeder)
        .exec(http("indexV1Markets")
        .httpRequest("GET","/index/v1/markets")
        .queryParam("market","${market}")
)

    // Run scnindexV1Markets with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1Markets.inject(
        rampUsersPerSec(1) to(indexV1MarketsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1MarketsPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1MarketsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1MarketsInstruments = scenario("indexV1MarketsInstrumentsSimulation")
        .feed(index_v1_markets_instrumentsQUERYFeeder)
        .exec(http("indexV1MarketsInstruments")
        .httpRequest("GET","/index/v1/markets/instruments")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
        .queryParam("instrument","${instrument}")
)

    // Run scnindexV1MarketsInstruments with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1MarketsInstruments.inject(
        rampUsersPerSec(1) to(indexV1MarketsInstrumentsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1MarketsInstrumentsPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1MarketsInstrumentsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexV1MarketsInstrumentsUnmapped = scenario("indexV1MarketsInstrumentsUnmappedSimulation")
        .feed(index_v1_markets_instruments_unmappedQUERYFeeder)
        .exec(http("indexV1MarketsInstrumentsUnmapped")
        .httpRequest("GET","/index/v1/markets/instruments/unmapped")
        .queryParam("instrument","${instrument}")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
)

    // Run scnindexV1MarketsInstrumentsUnmapped with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexV1MarketsInstrumentsUnmapped.inject(
        rampUsersPerSec(1) to(indexV1MarketsInstrumentsUnmappedPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexV1MarketsInstrumentsUnmappedPerSecond) during(durationSeconds),
        rampUsersPerSec(indexV1MarketsInstrumentsUnmappedPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
