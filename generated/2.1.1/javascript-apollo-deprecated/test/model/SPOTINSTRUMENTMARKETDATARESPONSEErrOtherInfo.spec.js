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
    instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo();
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

  describe('SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo', function() {
    it('should create an instance of SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo', function() {
      // uncomment below and update the code to test SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo();
      //expect(instance).to.be.a(CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo);
    });

    it('should have the property param (base name: "param")', function() {
      // uncomment below and update the code to test the property param
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo();
      //expect(instance).to.be();
    });

    it('should have the property values (base name: "values")', function() {
      // uncomment below and update the code to test the property values
      //var instance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo();
      //expect(instance).to.be();
    });

  });

}));
