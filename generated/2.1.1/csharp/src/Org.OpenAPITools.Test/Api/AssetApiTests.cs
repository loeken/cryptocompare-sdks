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
using NUnit.Framework;

using Org.OpenAPITools.Client;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Model;

namespace Org.OpenAPITools.Test
{
    /// <summary>
    ///  Class for testing AssetApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class AssetApiTests
    {
        private AssetApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new AssetApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of AssetApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOf' AssetApi
            //Assert.IsInstanceOf(typeof(AssetApi), instance);
        }

        
        /// <summary>
        /// Test AssetV1DataByAddress
        /// </summary>
        [Test]
        public void AssetV1DataByAddressTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string address = null;
            //string chainSymbol = null;
            //string groups = null;
            //var response = instance.AssetV1DataByAddress(address, chainSymbol, groups);
            //Assert.IsInstanceOf(typeof(GENERICRESPONSE), response, "response is GENERICRESPONSE");
        }
        
        /// <summary>
        /// Test AssetV1DataById
        /// </summary>
        [Test]
        public void AssetV1DataByIdTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int assetId = null;
            //string groups = null;
            //var response = instance.AssetV1DataById(assetId, groups);
            //Assert.IsInstanceOf(typeof(GENERICRESPONSE), response, "response is GENERICRESPONSE");
        }
        
        /// <summary>
        /// Test AssetV1DataBySymbol
        /// </summary>
        [Test]
        public void AssetV1DataBySymbolTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string assetSymbol = null;
            //string groups = null;
            //var response = instance.AssetV1DataBySymbol(assetSymbol, groups);
            //Assert.IsInstanceOf(typeof(GENERICRESPONSE), response, "response is GENERICRESPONSE");
        }
        
        /// <summary>
        /// Test AssetV1TopList
        /// </summary>
        [Test]
        public void AssetV1TopListTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? page = null;
            //int? pageSize = null;
            //string assetType = null;
            //string sortBy = null;
            //string sortDirection = null;
            //string groups = null;
            //var response = instance.AssetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups);
            //Assert.IsInstanceOf(typeof(GENERICRESPONSE), response, "response is GENERICRESPONSE");
        }
        
    }

}
