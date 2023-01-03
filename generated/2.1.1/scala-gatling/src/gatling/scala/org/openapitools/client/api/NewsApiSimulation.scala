package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class NewsApiSimulation extends Simulation {

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
    val newsV1ArticleListPerSecond = config.getDouble("performance.operationsPerSecond.newsV1ArticleList") * rateMultiplier * instanceMultiplier
    val newsV1CategoryListPerSecond = config.getDouble("performance.operationsPerSecond.newsV1CategoryList") * rateMultiplier * instanceMultiplier
    val newsV1SourceListPerSecond = config.getDouble("performance.operationsPerSecond.newsV1SourceList") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val news_v1_article_listQUERYFeeder = csv(userDataDirectory + File.separator + "newsV1ArticleList-queryParams.csv").random
    val news_v1_source_listQUERYFeeder = csv(userDataDirectory + File.separator + "newsV1SourceList-queryParams.csv").random

    // Setup all scenarios

    
    val scnnewsV1ArticleList = scenario("newsV1ArticleListSimulation")
        .feed(news_v1_article_listQUERYFeeder)
        .exec(http("newsV1ArticleList")
        .httpRequest("GET","/news/v1/article/list")
        .queryParam("categories","${categories}")
        .queryParam("source_ids","${source_ids}")
        .queryParam("to_ts","${to_ts}")
        .queryParam("lang","${lang}")
        .queryParam("exclude_categories","${exclude_categories}")
)

    // Run scnnewsV1ArticleList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnnewsV1ArticleList.inject(
        rampUsersPerSec(1) to(newsV1ArticleListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(newsV1ArticleListPerSecond) during(durationSeconds),
        rampUsersPerSec(newsV1ArticleListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnnewsV1CategoryList = scenario("newsV1CategoryListSimulation")
        .exec(http("newsV1CategoryList")
        .httpRequest("GET","/news/v1/category/list")
)

    // Run scnnewsV1CategoryList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnnewsV1CategoryList.inject(
        rampUsersPerSec(1) to(newsV1CategoryListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(newsV1CategoryListPerSecond) during(durationSeconds),
        rampUsersPerSec(newsV1CategoryListPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnnewsV1SourceList = scenario("newsV1SourceListSimulation")
        .feed(news_v1_source_listQUERYFeeder)
        .exec(http("newsV1SourceList")
        .httpRequest("GET","/news/v1/source/list")
        .queryParam("lang","${lang}")
        .queryParam("type","${type}")
        .queryParam("status","${status}")
)

    // Run scnnewsV1SourceList with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnnewsV1SourceList.inject(
        rampUsersPerSec(1) to(newsV1SourceListPerSecond) during(rampUpSeconds),
        constantUsersPerSec(newsV1SourceListPerSecond) during(durationSeconds),
        rampUsersPerSec(newsV1SourceListPerSecond) to(1) during(rampDownSeconds)
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
