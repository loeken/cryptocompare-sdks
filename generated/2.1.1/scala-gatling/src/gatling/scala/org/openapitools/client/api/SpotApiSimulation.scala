package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class SpotApiSimulation extends Simulation {

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
    val spotV1HistoricalDaysPerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalDays") * rateMultiplier * instanceMultiplier
    val spotV1HistoricalHoursPerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalHours") * rateMultiplier * instanceMultiplier
    val spotV1HistoricalMinutesPerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalMinutes") * rateMultiplier * instanceMultiplier
    val spotV1HistoricalOrderbookL2SnapshotMinutePerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalOrderbookL2SnapshotMinute") * rateMultiplier * instanceMultiplier
    val spotV1HistoricalTradesPerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalTrades") * rateMultiplier * instanceMultiplier
    val spotV1HistoricalTradesHourPerSecond = config.getDouble("performance.operationsPerSecond.spotV1HistoricalTradesHour") * rateMultiplier * instanceMultiplier
    val spotV1LatestInstrumentMetadataPerSecond = config.getDouble("performance.operationsPerSecond.spotV1LatestInstrumentMetadata") * rateMultiplier * instanceMultiplier
    val spotV1LatestTickPerSecond = config.getDouble("performance.operationsPerSecond.spotV1LatestTick") * rateMultiplier * instanceMultiplier
    val spotV1MarketsPerSecond = config.getDouble("performance.operationsPerSecond.spotV1Markets") * rateMultiplier * instanceMultiplier
    val spotV1MarketsInstrumentsPerSecond = config.getDouble("performance.operationsPerSecond.spotV1MarketsInstruments") * rateMultiplier * instanceMultiplier
    val spotV1MarketsInstrumentsUnmappedPerSecond = config.getDouble("performance.operationsPerSecond.spotV1MarketsInstrumentsUnmapped") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val spot_v1_historical_daysQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalDays-queryParams.csv").random
    val spot_v1_historical_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalHours-queryParams.csv").random
    val spot_v1_historical_minutesQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalMinutes-queryParams.csv").random
    val spot_v1_historical_orderbook_l2_snapshot_minuteQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalOrderbookL2SnapshotMinute-queryParams.csv").random
    val spot_v1_historical_tradesQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalTrades-queryParams.csv").random
    val spot_v1_historical_trades_hourQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1HistoricalTradesHour-queryParams.csv").random
    val spot_v1_latest_instrument_metadataQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1LatestInstrumentMetadata-queryParams.csv").random
    val spot_v1_latest_tickQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1LatestTick-queryParams.csv").random
    val spot_v1_marketsQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1Markets-queryParams.csv").random
    val spot_v1_markets_instrumentsQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1MarketsInstruments-queryParams.csv").random
    val spot_v1_markets_instruments_unmappedQUERYFeeder = csv(userDataDirectory + File.separator + "spotV1MarketsInstrumentsUnmapped-queryParams.csv").random

    // Setup all scenarios

    
    val scnspotV1HistoricalDays = scenario("spotV1HistoricalDaysSimulation")
        .feed(spot_v1_historical_daysQUERYFeeder)
        .exec(http("spotV1HistoricalDays")
        .httpRequest("GET","/spot/v1/historical/days")
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

    // Run scnspotV1HistoricalDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalDays.inject(
        rampUsersPerSec(1) to(spotV1HistoricalDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1HistoricalHours = scenario("spotV1HistoricalHoursSimulation")
        .feed(spot_v1_historical_hoursQUERYFeeder)
        .exec(http("spotV1HistoricalHours")
        .httpRequest("GET","/spot/v1/historical/hours")
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

    // Run scnspotV1HistoricalHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalHours.inject(
        rampUsersPerSec(1) to(spotV1HistoricalHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1HistoricalMinutes = scenario("spotV1HistoricalMinutesSimulation")
        .feed(spot_v1_historical_minutesQUERYFeeder)
        .exec(http("spotV1HistoricalMinutes")
        .httpRequest("GET","/spot/v1/historical/minutes")
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

    // Run scnspotV1HistoricalMinutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalMinutes.inject(
        rampUsersPerSec(1) to(spotV1HistoricalMinutesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalMinutesPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalMinutesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1HistoricalOrderbookL2SnapshotMinute = scenario("spotV1HistoricalOrderbookL2SnapshotMinuteSimulation")
        .feed(spot_v1_historical_orderbook_l2_snapshot_minuteQUERYFeeder)
        .exec(http("spotV1HistoricalOrderbookL2SnapshotMinute")
        .httpRequest("GET","/spot/v1/historical/orderbook/l2/snapshot/minute")
        .queryParam("depth","${depth}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("minute_ts","${minute_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnspotV1HistoricalOrderbookL2SnapshotMinute with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalOrderbookL2SnapshotMinute.inject(
        rampUsersPerSec(1) to(spotV1HistoricalOrderbookL2SnapshotMinutePerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalOrderbookL2SnapshotMinutePerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalOrderbookL2SnapshotMinutePerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1HistoricalTrades = scenario("spotV1HistoricalTradesSimulation")
        .feed(spot_v1_historical_tradesQUERYFeeder)
        .exec(http("spotV1HistoricalTrades")
        .httpRequest("GET","/spot/v1/historical/trades")
        .queryParam("last_ccseq","${last_ccseq}")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("after_ts","${after_ts}")
        .queryParam("limit","${limit}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnspotV1HistoricalTrades with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalTrades.inject(
        rampUsersPerSec(1) to(spotV1HistoricalTradesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalTradesPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalTradesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1HistoricalTradesHour = scenario("spotV1HistoricalTradesHourSimulation")
        .feed(spot_v1_historical_trades_hourQUERYFeeder)
        .exec(http("spotV1HistoricalTradesHour")
        .httpRequest("GET","/spot/v1/historical/trades/hour")
        .queryParam("return_404_on_empty_response","${return_404_on_empty_response}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("hour_ts","${hour_ts}")
        .queryParam("market","${market}")
        .queryParam("instrument","${instrument}")
        .queryParam("response_format","${response_format}")
)

    // Run scnspotV1HistoricalTradesHour with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1HistoricalTradesHour.inject(
        rampUsersPerSec(1) to(spotV1HistoricalTradesHourPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1HistoricalTradesHourPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1HistoricalTradesHourPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1LatestInstrumentMetadata = scenario("spotV1LatestInstrumentMetadataSimulation")
        .feed(spot_v1_latest_instrument_metadataQUERYFeeder)
        .exec(http("spotV1LatestInstrumentMetadata")
        .httpRequest("GET","/spot/v1/latest/instrument/metadata")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("instruments","${instruments}")
        .queryParam("market","${market}")
)

    // Run scnspotV1LatestInstrumentMetadata with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1LatestInstrumentMetadata.inject(
        rampUsersPerSec(1) to(spotV1LatestInstrumentMetadataPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1LatestInstrumentMetadataPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1LatestInstrumentMetadataPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1LatestTick = scenario("spotV1LatestTickSimulation")
        .feed(spot_v1_latest_tickQUERYFeeder)
        .exec(http("spotV1LatestTick")
        .httpRequest("GET","/spot/v1/latest/tick")
        .queryParam("instruments","${instruments}")
        .queryParam("mapping_priority","${mapping_priority}")
        .queryParam("groups","${groups}")
        .queryParam("market","${market}")
)

    // Run scnspotV1LatestTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1LatestTick.inject(
        rampUsersPerSec(1) to(spotV1LatestTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1LatestTickPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1LatestTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1Markets = scenario("spotV1MarketsSimulation")
        .feed(spot_v1_marketsQUERYFeeder)
        .exec(http("spotV1Markets")
        .httpRequest("GET","/spot/v1/markets")
        .queryParam("market","${market}")
)

    // Run scnspotV1Markets with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1Markets.inject(
        rampUsersPerSec(1) to(spotV1MarketsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1MarketsPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1MarketsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1MarketsInstruments = scenario("spotV1MarketsInstrumentsSimulation")
        .feed(spot_v1_markets_instrumentsQUERYFeeder)
        .exec(http("spotV1MarketsInstruments")
        .httpRequest("GET","/spot/v1/markets/instruments")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
        .queryParam("instrument","${instrument}")
)

    // Run scnspotV1MarketsInstruments with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1MarketsInstruments.inject(
        rampUsersPerSec(1) to(spotV1MarketsInstrumentsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1MarketsInstrumentsPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1MarketsInstrumentsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnspotV1MarketsInstrumentsUnmapped = scenario("spotV1MarketsInstrumentsUnmappedSimulation")
        .feed(spot_v1_markets_instruments_unmappedQUERYFeeder)
        .exec(http("spotV1MarketsInstrumentsUnmapped")
        .httpRequest("GET","/spot/v1/markets/instruments/unmapped")
        .queryParam("instrument","${instrument}")
        .queryParam("market","${market}")
        .queryParam("instrument_status","${instrument_status}")
)

    // Run scnspotV1MarketsInstrumentsUnmapped with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnspotV1MarketsInstrumentsUnmapped.inject(
        rampUsersPerSec(1) to(spotV1MarketsInstrumentsUnmappedPerSecond) during(rampUpSeconds),
        constantUsersPerSec(spotV1MarketsInstrumentsUnmappedPerSecond) during(durationSeconds),
        rampUsersPerSec(spotV1MarketsInstrumentsUnmappedPerSecond) to(1) during(rampDownSeconds)
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
