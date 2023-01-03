package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ReferenceRatesApiSimulation extends Simulation {

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
    val indexCcV1HistoricalDaysPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1HistoricalDays") * rateMultiplier * instanceMultiplier
    val indexCcV1HistoricalHoursPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1HistoricalHours") * rateMultiplier * instanceMultiplier
    val indexCcV1HistoricalMessagesPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1HistoricalMessages") * rateMultiplier * instanceMultiplier
    val indexCcV1HistoricalMessagesHourPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1HistoricalMessagesHour") * rateMultiplier * instanceMultiplier
    val indexCcV1HistoricalMinutesPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1HistoricalMinutes") * rateMultiplier * instanceMultiplier
    val indexCcV1LatestInstrumentMetadataPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1LatestInstrumentMetadata") * rateMultiplier * instanceMultiplier
    val indexCcV1LatestTickPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1LatestTick") * rateMultiplier * instanceMultiplier
    val indexCcV1MarketsPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1Markets") * rateMultiplier * instanceMultiplier
    val indexCcV1MarketsInstrumentsPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1MarketsInstruments") * rateMultiplier * instanceMultiplier
    val indexCcV1MarketsInstrumentsUnmappedPerSecond = config.getDouble("performance.operationsPerSecond.indexCcV1MarketsInstrumentsUnmapped") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val index_cc_v1_historical_daysQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1HistoricalDays-queryParams.csv").random
    val index_cc_v1_historical_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1HistoricalHours-queryParams.csv").random
    val index_cc_v1_historical_messagesQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1HistoricalMessages-queryParams.csv").random
    val index_cc_v1_historical_messages_hourQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1HistoricalMessagesHour-queryParams.csv").random
    val index_cc_v1_historical_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1HistoricalMinutes-queryParams.csv").random
    val index_cc_v1_latest_instrument_metadataQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1LatestInstrumentMetadata-queryParams.csv").random
    val index_cc_v1_latest_tickQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1LatestTick-queryParams.csv").random
    val index_cc_v1_marketsQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1Markets-queryParams.csv").random
    val index_cc_v1_markets_instrumentsQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1MarketsInstruments-queryParams.csv").random
    val index_cc_v1_markets_instruments_unmappedQUERYFeeder = csv(userDataDirectory + File.separator + "indexCcV1MarketsInstrumentsUnmapped-queryParams.csv").random

    // Setup all scenarios

    
    val scnindexCcV1HistoricalDays = scenario("indexCcV1HistoricalDaysSimulation")
        .feed(index_cc_v1_historical_daysQUERYFeeder)
        .exec(http("indexCcV1HistoricalDays")
        .httpRequest("GET","/index/cc/v1/historical/days")
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

    // Run scnindexCcV1HistoricalDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1HistoricalDays.inject(
        rampUsersPerSec(1) to(indexCcV1HistoricalDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1HistoricalDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1HistoricalDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1HistoricalHours = scenario("indexCcV1HistoricalHoursSimulation")
        .feed(index_cc_v1_historical_hoursQUERYFeeder)
        .exec(http("indexCcV1HistoricalHours")
        .httpRequest("GET","/index/cc/v1/historical/hours")
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

    // Run scnindexCcV1HistoricalHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1HistoricalHours.inject(
        rampUsersPerSec(1) to(indexCcV1HistoricalHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1HistoricalHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1HistoricalHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1HistoricalMessages = scenario("indexCcV1HistoricalMessagesSimulation")
        .feed(index_cc_v1_historical_messagesQUERYFeeder)
        .exec(http("indexCcV1HistoricalMessages")
        .httpRequest("GET","/index/cc/v1/historical/messages")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("after_ts","${after_ts}")
        .queryParam("limit","${limit}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexCcV1HistoricalMessages with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1HistoricalMessages.inject(
        rampUsersPerSec(1) to(indexCcV1HistoricalMessagesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1HistoricalMessagesPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1HistoricalMessagesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1HistoricalMessagesHour = scenario("indexCcV1HistoricalMessagesHourSimulation")
        .feed(index_cc_v1_historical_messages_hourQUERYFeeder)
        .exec(http("indexCcV1HistoricalMessagesHour")
        .httpRequest("GET","/index/cc/v1/historical/messages/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnindexCcV1HistoricalMessagesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1HistoricalMessagesHour.inject(
        rampUsersPerSec(1) to(indexCcV1HistoricalMessagesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1HistoricalMessagesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1HistoricalMessagesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1HistoricalMinutes = scenario("indexCcV1HistoricalMinutesSimulation")
        .feed(index_cc_v1_historical_minutesQUERYFeeder)
        .exec(http("indexCcV1HistoricalMinutes")
        .httpRequest("GET","/index/cc/v1/historical/minutes")
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

    // Run scnindexCcV1HistoricalMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1HistoricalMinutes.inject(
        rampUsersPerSec(1) to(indexCcV1HistoricalMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1HistoricalMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1HistoricalMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1LatestInstrumentMetadata = scenario("indexCcV1LatestInstrumentMetadataSimulation")
        .feed(index_cc_v1_latest_instrument_metadataQUERYFeeder)
        .exec(http("indexCcV1LatestInstrumentMetadata")
        .httpRequest("GET","/index/cc/v1/latest/instrument/metadata")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnindexCcV1LatestInstrumentMetadata with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1LatestInstrumentMetadata.inject(
        rampUsersPerSec(1) to(indexCcV1LatestInstrumentMetadataPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1LatestInstrumentMetadataPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1LatestInstrumentMetadataPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1LatestTick = scenario("indexCcV1LatestTickSimulation")
        .feed(index_cc_v1_latest_tickQUERYFeeder)
        .exec(http("indexCcV1LatestTick")
        .httpRequest("GET","/index/cc/v1/latest/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnindexCcV1LatestTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1LatestTick.inject(
        rampUsersPerSec(1) to(indexCcV1LatestTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1LatestTickPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1LatestTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1Markets = scenario("indexCcV1MarketsSimulation")
        .feed(index_cc_v1_marketsQUERYFeeder)
        .exec(http("indexCcV1Markets")
        .httpRequest("GET","/index/cc/v1/markets")
        .queryParam("market","${market}")
)

    // Run scnindexCcV1Markets with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1Markets.inject(
        rampUsersPerSec(1) to(indexCcV1MarketsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1MarketsPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1MarketsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1MarketsInstruments = scenario("indexCcV1MarketsInstrumentsSimulation")
        .feed(index_cc_v1_markets_instrumentsQUERYFeeder)
        .exec(http("indexCcV1MarketsInstruments")
        .httpRequest("GET","/index/cc/v1/markets/instruments")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
        .queryParam("instrument","${instrument}")
)

    // Run scnindexCcV1MarketsInstruments with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1MarketsInstruments.inject(
        rampUsersPerSec(1) to(indexCcV1MarketsInstrumentsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1MarketsInstrumentsPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1MarketsInstrumentsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnindexCcV1MarketsInstrumentsUnmapped = scenario("indexCcV1MarketsInstrumentsUnmappedSimulation")
        .feed(index_cc_v1_markets_instruments_unmappedQUERYFeeder)
        .exec(http("indexCcV1MarketsInstrumentsUnmapped")
        .httpRequest("GET","/index/cc/v1/markets/instruments/unmapped")
        .queryParam("instrument","${instrument}")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
)

    // Run scnindexCcV1MarketsInstrumentsUnmapped with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnindexCcV1MarketsInstrumentsUnmapped.inject(
        rampUsersPerSec(1) to(indexCcV1MarketsInstrumentsUnmappedPerSecond) during(rampUpSeconds),
        constantUsersPerSec(indexCcV1MarketsInstrumentsUnmappedPerSecond) during(durationSeconds),
        rampUsersPerSec(indexCcV1MarketsInstrumentsUnmappedPerSecond) to(1) during(rampDownSeconds)
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
