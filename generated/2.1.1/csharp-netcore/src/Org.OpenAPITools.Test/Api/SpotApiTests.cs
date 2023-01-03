/*
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 *
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using Org.OpenAPITools.Client;
using Org.OpenAPITools.Api;
// uncomment below to import models
//using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Test.Api
{
    /// <summary>
    ///  Class for testing SpotApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class SpotApiTests : IDisposable
    {
        private SpotApi instance;

        public SpotApiTests()
        {
            instance = new SpotApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of SpotApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' SpotApi
            //Assert.IsType<SpotApi>(instance);
        }

        /// <summary>
        /// Test SpotV1HistoricalDays
        /// </summary>
        [Fact]
        public void SpotV1HistoricalDaysTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //List<string> groups = null;
            //int? limit = null;
            //int? toTs = null;
            //int? aggregate = null;
            //bool? fill = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //var response = instance.SpotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
            //Assert.IsType<SPOTINSTRUMENTHISTODATARESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1HistoricalHours
        /// </summary>
        [Fact]
        public void SpotV1HistoricalHoursTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //List<string> groups = null;
            //int? limit = null;
            //int? toTs = null;
            //int? aggregate = null;
            //bool? fill = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //var response = instance.SpotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
            //Assert.IsType<SPOTINSTRUMENTHISTODATARESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1HistoricalMinutes
        /// </summary>
        [Fact]
        public void SpotV1HistoricalMinutesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //List<string> groups = null;
            //int? limit = null;
            //int? toTs = null;
            //int? aggregate = null;
            //bool? fill = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //var response = instance.SpotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
            //Assert.IsType<SPOTINSTRUMENTHISTODATARESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1HistoricalOrderbookL2SnapshotMinute
        /// </summary>
        [Fact]
        public void SpotV1HistoricalOrderbookL2SnapshotMinuteTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //int minuteTs = null;
            //int? depth = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //var response = instance.SpotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat);
            //Assert.IsType<GENERICRESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1HistoricalTrades
        /// </summary>
        [Fact]
        public void SpotV1HistoricalTradesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //int? afterTs = null;
            //int? lastCcseq = null;
            //int? limit = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //bool? return404OnEmptyResponse = null;
            //var response = instance.SpotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
            //Assert.IsType<SPOTINSTRUMENTTRADERESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1HistoricalTradesHour
        /// </summary>
        [Fact]
        public void SpotV1HistoricalTradesHourTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //int? hourTs = null;
            //string mappingPriority = null;
            //string responseFormat = null;
            //bool? return404OnEmptyResponse = null;
            //var response = instance.SpotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
            //Assert.IsType<SPOTINSTRUMENTTRADERESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1LatestInstrumentMetadata
        /// </summary>
        [Fact]
        public void SpotV1LatestInstrumentMetadataTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //List<string> instruments = null;
            //List<string> groups = null;
            //string mappingPriority = null;
            //var response = instance.SpotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority);
            //Assert.IsType<SPOTINSTRUMENTMETADATARESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1LatestTick
        /// </summary>
        [Fact]
        public void SpotV1LatestTickTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //List<string> instruments = null;
            //List<string> groups = null;
            //string mappingPriority = null;
            //var response = instance.SpotV1LatestTick(market, instruments, groups, mappingPriority);
            //Assert.IsType<SPOTINSTRUMENTMARKETDATARESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1Markets
        /// </summary>
        [Fact]
        public void SpotV1MarketsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //var response = instance.SpotV1Markets(market);
            //Assert.IsType<GENERICRESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1MarketsInstruments
        /// </summary>
        [Fact]
        public void SpotV1MarketsInstrumentsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //List<string> instrumentStatus = null;
            //var response = instance.SpotV1MarketsInstruments(market, instrument, instrumentStatus);
            //Assert.IsType<GENERICRESPONSE>(response);
        }

        /// <summary>
        /// Test SpotV1MarketsInstrumentsUnmapped
        /// </summary>
        [Fact]
        public void SpotV1MarketsInstrumentsUnmappedTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string market = null;
            //string instrument = null;
            //List<string> instrumentStatus = null;
            //var response = instance.SpotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus);
            //Assert.IsType<GENERICRESPONSE>(response);
        }
    }
}