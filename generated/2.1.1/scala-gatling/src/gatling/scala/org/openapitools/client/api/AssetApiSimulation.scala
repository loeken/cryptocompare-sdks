package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class AssetApiSimulation extends Simulation {

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
    val assetV1DataByAddressPerSecond = config.getDouble("performance.operationsPerSecond.assetV1DataByAddress") * rateMultiplier * instanceMultiplier
    val assetV1DataByIdPerSecond = config.getDouble("performance.operationsPerSecond.assetV1DataById") * rateMultiplier * instanceMultiplier
    val assetV1DataBySymbolPerSecond = config.getDouble("performance.operationsPerSecond.assetV1DataBySymbol") * rateMultiplier * instanceMultiplier
    val assetV1TopListPerSecond = config.getDouble("performance.operationsPerSecond.assetV1TopList") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val asset_v1_data_by_addressQUERYFeeder = csv(userDataDirectory + File.separator + "assetV1DataByAddress-queryParams.csv").random
    val asset_v1_data_by_idQUERYFeeder = csv(userDataDirectory + File.separator + "assetV1DataById-queryParams.csv").random
    val asset_v1_data_by_symbolQUERYFeeder = csv(userDataDirectory + File.separator + "assetV1DataBySymbol-queryParams.csv").random
    val asset_v1_top_listQUERYFeeder = csv(userDataDirectory + File.separator + "assetV1TopList-queryParams.csv").random

    // Setup all scenarios

    
    val scnassetV1DataByAddress = scenario("assetV1DataByAddressSimulation")
        .feed(asset_v1_data_by_addressQUERYFeeder)
        .exec(http("assetV1DataByAddress")
        .httpRequest("GET","/asset/v1/data/by/address")
        .queryParam("groups","${groups}")
        .queryParam("chain_symbol","${chain_symbol}")
        .queryParam("address","${address}")
)

    // Run scnassetV1DataByAddress with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnassetV1DataByAddress.inject(
        rampUsersPerSec(1) to(assetV1DataByAddressPerSecond) during(rampUpSeconds),
        constantUsersPerSec(assetV1DataByAddressPerSecond) during(durationSeconds),
        rampUsersPerSec(assetV1DataByAddressPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnassetV1DataById = scenario("assetV1DataByIdSimulation")
        .feed(asset_v1_data_by_idQUERYFeeder)
        .exec(http("assetV1DataById")
        .httpRequest("GET","/asset/v1/data/by/id")
        .queryParam("groups","${groups}")
        .queryParam("asset_id","${asset_id}")
)

    // Run scnassetV1DataById with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnassetV1DataById.inject(
        rampUsersPerSec(1) to(assetV1DataByIdPerSecond) during(rampUpSeconds),
        constantUsersPerSec(assetV1DataByIdPerSecond) during(durationSeconds),
        rampUsersPerSec(assetV1DataByIdPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnassetV1DataBySymbol = scenario("assetV1DataBySymbolSimulation")
        .feed(asset_v1_data_by_symbolQUERYFeeder)
        .exec(http("assetV1DataBySymbol")
        .httpRequest("GET","/asset/v1/data/by/symbol")
        .queryParam("groups","${groups}")
        .queryParam("asset_symbol","${asset_symbol}")
)

    // Run scnassetV1DataBySymbol with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnassetV1DataBySymbol.inject(
        rampUsersPerSec(1) to(assetV1DataBySymbolPerSecond) during(rampUpSeconds),
        constantUsersPerSec(assetV1DataBySymbolPerSecond) during(durationSeconds),
        rampUsersPerSec(assetV1DataBySymbolPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnassetV1TopList = scenario("assetV1TopListSimulation")
        .feed(asset_v1_top_listQUERYFeeder)
        .exec(http("assetV1TopList")
        .httpRequest("GET","/asset/v1/top/list")
        .queryParam("page_size","${page_size}")
        .queryParam("sort_by","${sort_by}")
        .queryParam("groups","${groups}")
        .queryParam("asset_type","${asset_type}")
        .queryParam("sort_direction","${sort_direction}")
        .queryParam("page","${page}")
)

    // Run scnassetV1TopList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnassetV1TopList.inject(
        rampUsersPerSec(1) to(assetV1TopListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(assetV1TopListPerSecond) during(durationSeconds),
        rampUsersPerSec(assetV1TopListPerSecond) to(1) during(rampDownSeconds)
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
