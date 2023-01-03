package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class OverviewApiSimulation extends Simulation {

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
    val overviewV1HistoricalMarketcapAllAssetsDaysPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1HistoricalMarketcapAllAssetsDays") * rateMultiplier * instanceMultiplier
    val overviewV1HistoricalMarketcapAllAssetsHoursPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1HistoricalMarketcapAllAssetsHours") * rateMultiplier * instanceMultiplier
    val overviewV1HistoricalMarketcapFtwAssetsDaysPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1HistoricalMarketcapFtwAssetsDays") * rateMultiplier * instanceMultiplier
    val overviewV1HistoricalMarketcapFtwAssetsHoursPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1HistoricalMarketcapFtwAssetsHours") * rateMultiplier * instanceMultiplier
    val overviewV1LatestMarketcapAllTickPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1LatestMarketcapAllTick") * rateMultiplier * instanceMultiplier
    val overviewV1LatestMarketcapFtwTickPerSecond = config.getDouble("performance.operationsPerSecond.overviewV1LatestMarketcapFtwTick") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val overview_v1_historical_marketcap_all_assets_daysQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1HistoricalMarketcapAllAssetsDays-queryParams.csv").random
    val overview_v1_historical_marketcap_all_assets_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1HistoricalMarketcapAllAssetsHours-queryParams.csv").random
    val overview_v1_historical_marketcap_ftw_assets_daysQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1HistoricalMarketcapFtwAssetsDays-queryParams.csv").random
    val overview_v1_historical_marketcap_ftw_assets_hoursQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1HistoricalMarketcapFtwAssetsHours-queryParams.csv").random
    val overview_v1_latest_marketcap_all_tickQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1LatestMarketcapAllTick-queryParams.csv").random
    val overview_v1_latest_marketcap_ftw_tickQUERYFeeder = csv(userDataDirectory + File.separator + "overviewV1LatestMarketcapFtwTick-queryParams.csv").random

    // Setup all scenarios

    
    val scnoverviewV1HistoricalMarketcapAllAssetsDays = scenario("overviewV1HistoricalMarketcapAllAssetsDaysSimulation")
        .feed(overview_v1_historical_marketcap_all_assets_daysQUERYFeeder)
        .exec(http("overviewV1HistoricalMarketcapAllAssetsDays")
        .httpRequest("GET","/overview/v1/historical/marketcap/all/assets/days")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnoverviewV1HistoricalMarketcapAllAssetsDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1HistoricalMarketcapAllAssetsDays.inject(
        rampUsersPerSec(1) to(overviewV1HistoricalMarketcapAllAssetsDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1HistoricalMarketcapAllAssetsDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1HistoricalMarketcapAllAssetsDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnoverviewV1HistoricalMarketcapAllAssetsHours = scenario("overviewV1HistoricalMarketcapAllAssetsHoursSimulation")
        .feed(overview_v1_historical_marketcap_all_assets_hoursQUERYFeeder)
        .exec(http("overviewV1HistoricalMarketcapAllAssetsHours")
        .httpRequest("GET","/overview/v1/historical/marketcap/all/assets/hours")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnoverviewV1HistoricalMarketcapAllAssetsHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1HistoricalMarketcapAllAssetsHours.inject(
        rampUsersPerSec(1) to(overviewV1HistoricalMarketcapAllAssetsHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1HistoricalMarketcapAllAssetsHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1HistoricalMarketcapAllAssetsHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnoverviewV1HistoricalMarketcapFtwAssetsDays = scenario("overviewV1HistoricalMarketcapFtwAssetsDaysSimulation")
        .feed(overview_v1_historical_marketcap_ftw_assets_daysQUERYFeeder)
        .exec(http("overviewV1HistoricalMarketcapFtwAssetsDays")
        .httpRequest("GET","/overview/v1/historical/marketcap/ftw/assets/days")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnoverviewV1HistoricalMarketcapFtwAssetsDays with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1HistoricalMarketcapFtwAssetsDays.inject(
        rampUsersPerSec(1) to(overviewV1HistoricalMarketcapFtwAssetsDaysPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1HistoricalMarketcapFtwAssetsDaysPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1HistoricalMarketcapFtwAssetsDaysPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnoverviewV1HistoricalMarketcapFtwAssetsHours = scenario("overviewV1HistoricalMarketcapFtwAssetsHoursSimulation")
        .feed(overview_v1_historical_marketcap_ftw_assets_hoursQUERYFeeder)
        .exec(http("overviewV1HistoricalMarketcapFtwAssetsHours")
        .httpRequest("GET","/overview/v1/historical/marketcap/ftw/assets/hours")
        .queryParam("limit","${limit}")
        .queryParam("groups","${groups}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("aggregate","${aggregate}")
        .queryParam("fill","${fill}")
        .queryParam("response_format","${response_format}")
)

    // Run scnoverviewV1HistoricalMarketcapFtwAssetsHours with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1HistoricalMarketcapFtwAssetsHours.inject(
        rampUsersPerSec(1) to(overviewV1HistoricalMarketcapFtwAssetsHoursPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1HistoricalMarketcapFtwAssetsHoursPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1HistoricalMarketcapFtwAssetsHoursPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnoverviewV1LatestMarketcapAllTick = scenario("overviewV1LatestMarketcapAllTickSimulation")
        .feed(overview_v1_latest_marketcap_all_tickQUERYFeeder)
        .exec(http("overviewV1LatestMarketcapAllTick")
        .httpRequest("GET","/overview/v1/latest/marketcap/all/tick")
        .queryParam("groups","${groups}")
)

    // Run scnoverviewV1LatestMarketcapAllTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1LatestMarketcapAllTick.inject(
        rampUsersPerSec(1) to(overviewV1LatestMarketcapAllTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1LatestMarketcapAllTickPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1LatestMarketcapAllTickPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnoverviewV1LatestMarketcapFtwTick = scenario("overviewV1LatestMarketcapFtwTickSimulation")
        .feed(overview_v1_latest_marketcap_ftw_tickQUERYFeeder)
        .exec(http("overviewV1LatestMarketcapFtwTick")
        .httpRequest("GET","/overview/v1/latest/marketcap/ftw/tick")
        .queryParam("groups","${groups}")
)

    // Run scnoverviewV1LatestMarketcapFtwTick with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnoverviewV1LatestMarketcapFtwTick.inject(
        rampUsersPerSec(1) to(overviewV1LatestMarketcapFtwTickPerSecond) during(rampUpSeconds),
        constantUsersPerSec(overviewV1LatestMarketcapFtwTickPerSecond) during(durationSeconds),
        rampUsersPerSec(overviewV1LatestMarketcapFtwTickPerSecond) to(1) during(rampDownSeconds)
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
