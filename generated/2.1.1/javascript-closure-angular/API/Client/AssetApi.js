/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.AssetApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * CryptoCompare is the world&#39;s leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 * Version: 2.1.1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license CryptoCompare API License Agreement
 * https://www.cryptocompare.com/api-licence-agreement/
 */

goog.provide('API.Client.AssetApi');

goog.require('API.Client.Error');
goog.require('API.Client.GENERIC_RESPONSE');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.AssetApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('AssetApiBasePath') ?
                   /** @type {!string} */ ($injector.get('AssetApiBasePath')) :
                   'https://data-api.cryptocompare.com';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('AssetApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('AssetApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.AssetApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * 
 * @param {!string} address 
 * @param {!string} chainSymbol 
 * @param {!string=} opt_groups 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.AssetApi.prototype.assetV1DataByAddress = function(address, chainSymbol, opt_groups, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/asset/v1/data/by/address';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'address' is set
  if (!address) {
    throw new Error('Missing required parameter address when calling assetV1DataByAddress');
  }
  // verify required parameter 'chainSymbol' is set
  if (!chainSymbol) {
    throw new Error('Missing required parameter chainSymbol when calling assetV1DataByAddress');
  }
  if (address !== undefined) {
    queryParameters['address'] = address;
  }

  if (chainSymbol !== undefined) {
    queryParameters['chain_symbol'] = chainSymbol;
  }

  if (opt_groups !== undefined) {
    queryParameters['groups'] = opt_groups;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * 
 * @param {!number} assetId The asset id you are interested in
 * @param {!string=} opt_groups 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.AssetApi.prototype.assetV1DataById = function(assetId, opt_groups, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/asset/v1/data/by/id';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'assetId' is set
  if (!assetId) {
    throw new Error('Missing required parameter assetId when calling assetV1DataById');
  }
  if (assetId !== undefined) {
    queryParameters['asset_id'] = assetId;
  }

  if (opt_groups !== undefined) {
    queryParameters['groups'] = opt_groups;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * 
 * @param {!string} assetSymbol The asset symbol you are interested in
 * @param {!string=} opt_groups 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.AssetApi.prototype.assetV1DataBySymbol = function(assetSymbol, opt_groups, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/asset/v1/data/by/symbol';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'assetSymbol' is set
  if (!assetSymbol) {
    throw new Error('Missing required parameter assetSymbol when calling assetV1DataBySymbol');
  }
  if (assetSymbol !== undefined) {
    queryParameters['asset_symbol'] = assetSymbol;
  }

  if (opt_groups !== undefined) {
    queryParameters['groups'] = opt_groups;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * 
 * @param {!number=} opt_page The page number for the request to get {page_size} coins at the time.
 * @param {!number=} opt_pageSize The number of items returned per page
 * @param {!string=} opt_assetType The asset class/type
 * @param {!string=} opt_sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
 * @param {!string=} opt_sortDirection Sort direction ( DESC,ASC )
 * @param {!string=} opt_groups 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.AssetApi.prototype.assetV1TopList = function(opt_page, opt_pageSize, opt_assetType, opt_sortBy, opt_sortDirection, opt_groups, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/asset/v1/top/list';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_page !== undefined) {
    queryParameters['page'] = opt_page;
  }

  if (opt_pageSize !== undefined) {
    queryParameters['page_size'] = opt_pageSize;
  }

  if (opt_assetType !== undefined) {
    queryParameters['asset_type'] = opt_assetType;
  }

  if (opt_sortBy !== undefined) {
    queryParameters['sort_by'] = opt_sortBy;
  }

  if (opt_sortDirection !== undefined) {
    queryParameters['sort_direction'] = opt_sortDirection;
  }

  if (opt_groups !== undefined) {
    queryParameters['groups'] = opt_groups;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
