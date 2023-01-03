/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry);
  }
}(this, function(expect, CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('SPOTINSTRUMENTTRADE', function() {
    it('should create an instance of SPOTINSTRUMENTTRADE', function() {
      // uncomment below and update the code to test SPOTINSTRUMENTTRADE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be.a(CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE);
    });

    it('should have the property BASE (base name: "BASE")', function() {
      // uncomment below and update the code to test the property BASE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property CCSEQ (base name: "CCSEQ")', function() {
      // uncomment below and update the code to test the property CCSEQ
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property ID (base name: "ID")', function() {
      // uncomment below and update the code to test the property ID
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property INSTRUMENT (base name: "INSTRUMENT")', function() {
      // uncomment below and update the code to test the property INSTRUMENT
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property MAPPED_INSTRUMENT (base name: "MAPPED_INSTRUMENT")', function() {
      // uncomment below and update the code to test the property MAPPED_INSTRUMENT
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property MARKET (base name: "MARKET")', function() {
      // uncomment below and update the code to test the property MARKET
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property PRICE (base name: "PRICE")', function() {
      // uncomment below and update the code to test the property PRICE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property QUANTITY (base name: "QUANTITY")', function() {
      // uncomment below and update the code to test the property QUANTITY
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property QUOTE (base name: "QUOTE")', function() {
      // uncomment below and update the code to test the property QUOTE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property QUOTE_QUANTITY (base name: "QUOTE_QUANTITY")', function() {
      // uncomment below and update the code to test the property QUOTE_QUANTITY
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property RECEIVED_TIMESTAMP (base name: "RECEIVED_TIMESTAMP")', function() {
      // uncomment below and update the code to test the property RECEIVED_TIMESTAMP
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property RECEIVED_TIMESTAMP_NS (base name: "RECEIVED_TIMESTAMP_NS")', function() {
      // uncomment below and update the code to test the property RECEIVED_TIMESTAMP_NS
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property SIDE (base name: "SIDE")', function() {
      // uncomment below and update the code to test the property SIDE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property SOURCE (base name: "SOURCE")', function() {
      // uncomment below and update the code to test the property SOURCE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property TIMESTAMP (base name: "TIMESTAMP")', function() {
      // uncomment below and update the code to test the property TIMESTAMP
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property TIMESTAMP_NS (base name: "TIMESTAMP_NS")', function() {
      // uncomment below and update the code to test the property TIMESTAMP_NS
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

    it('should have the property TYPE (base name: "TYPE")', function() {
      // uncomment below and update the code to test the property TYPE
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTTRADE();
      //expect(instance).to.be();
    });

  });

}));
