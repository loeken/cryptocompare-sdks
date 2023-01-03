/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.NewsApi.
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

goog.provide('API.Client.NewsApi');

goog.require('API.Client.Error');
goog.require('API.Client.GENERIC_RESPONSE');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.NewsApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('NewsApiBasePath') ?
                   /** @type {!string} */ ($injector.get('NewsApiBasePath')) :
                   'https://data-api.cryptocompare.com';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('NewsApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('NewsApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.NewsApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * 
 * @param {!Array<!string>=} opt_sourceIds Get articles from specific sources; either by their ids or keys
 * @param {!string=} opt_lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * @param {!Array<!string>=} opt_categories News article categories to return
 * @param {!Array<!string>=} opt_excludeCategories News article categories to exclude from results
 * @param {!number=} opt_toTs Articles published on or before this timestamp
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.NewsApi.prototype.newsV1ArticleList = function(opt_sourceIds, opt_lang, opt_categories, opt_excludeCategories, opt_toTs, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/news/v1/article/list';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_sourceIds !== undefined) {
    queryParameters['source_ids'] = opt_sourceIds;
  }

  if (opt_lang !== undefined) {
    queryParameters['lang'] = opt_lang;
  }

  if (opt_categories !== undefined) {
    queryParameters['categories'] = opt_categories;
  }

  if (opt_excludeCategories !== undefined) {
    queryParameters['exclude_categories'] = opt_excludeCategories;
  }

  if (opt_toTs !== undefined) {
    queryParameters['to_ts'] = opt_toTs;
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
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.NewsApi.prototype.newsV1CategoryList = function(opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/news/v1/category/list';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
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
 * @param {!string=} opt_lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
 * @param {!string=} opt_type RSS, API, TWITTER
 * @param {!string=} opt_status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GENERIC_RESPONSE>}
 */
API.Client.NewsApi.prototype.newsV1SourceList = function(opt_lang, opt_type, opt_status, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/news/v1/source/list';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_lang !== undefined) {
    queryParameters['lang'] = opt_lang;
  }

  if (opt_type !== undefined) {
    queryParameters['type'] = opt_type;
  }

  if (opt_status !== undefined) {
    queryParameters['status'] = opt_status;
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
