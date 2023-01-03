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
  }
}(this, function(expect, CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
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

  describe('ReferenceRatesApi', function() {
    describe('indexCcV1HistoricalDays', function() {
      it('should call indexCcV1HistoricalDays successfully', function(done) {
        //uncomment below and update the code to test indexCcV1HistoricalDays
        //instance.indexCcV1HistoricalDays(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1HistoricalHours', function() {
      it('should call indexCcV1HistoricalHours successfully', function(done) {
        //uncomment below and update the code to test indexCcV1HistoricalHours
        //instance.indexCcV1HistoricalHours(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1HistoricalMessages', function() {
      it('should call indexCcV1HistoricalMessages successfully', function(done) {
        //uncomment below and update the code to test indexCcV1HistoricalMessages
        //instance.indexCcV1HistoricalMessages(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1HistoricalMessagesHour', function() {
      it('should call indexCcV1HistoricalMessagesHour successfully', function(done) {
        //uncomment below and update the code to test indexCcV1HistoricalMessagesHour
        //instance.indexCcV1HistoricalMessagesHour(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1HistoricalMinutes', function() {
      it('should call indexCcV1HistoricalMinutes successfully', function(done) {
        //uncomment below and update the code to test indexCcV1HistoricalMinutes
        //instance.indexCcV1HistoricalMinutes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1LatestInstrumentMetadata', function() {
      it('should call indexCcV1LatestInstrumentMetadata successfully', function(done) {
        //uncomment below and update the code to test indexCcV1LatestInstrumentMetadata
        //instance.indexCcV1LatestInstrumentMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1LatestTick', function() {
      it('should call indexCcV1LatestTick successfully', function(done) {
        //uncomment below and update the code to test indexCcV1LatestTick
        //instance.indexCcV1LatestTick(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1Markets', function() {
      it('should call indexCcV1Markets successfully', function(done) {
        //uncomment below and update the code to test indexCcV1Markets
        //instance.indexCcV1Markets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1MarketsInstruments', function() {
      it('should call indexCcV1MarketsInstruments successfully', function(done) {
        //uncomment below and update the code to test indexCcV1MarketsInstruments
        //instance.indexCcV1MarketsInstruments(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('indexCcV1MarketsInstrumentsUnmapped', function() {
      it('should call indexCcV1MarketsInstrumentsUnmapped successfully', function(done) {
        //uncomment below and update the code to test indexCcV1MarketsInstrumentsUnmapped
        //instance.indexCcV1MarketsInstrumentsUnmapped(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
