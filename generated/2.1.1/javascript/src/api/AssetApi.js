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


import ApiClient from "../ApiClient";
import Error from '../model/Error';
import GENERICRESPONSE from '../model/GENERICRESPONSE';

/**
* Asset service.
* @module api/AssetApi
* @version 2.1.1
*/
export default class AssetApi {

    /**
    * Constructs a new AssetApi. 
    * @alias module:api/AssetApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the assetV1DataByAddress operation.
     * @callback module:api/AssetApi~assetV1DataByAddressCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} address 
     * @param {String} chainSymbol 
     * @param {Object} opts Optional parameters
     * @param {String} opts.groups  (default to '')
     * @param {module:api/AssetApi~assetV1DataByAddressCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    assetV1DataByAddress(address, chainSymbol, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'address' is set
      if (address === undefined || address === null) {
        throw new Error("Missing the required parameter 'address' when calling assetV1DataByAddress");
      }
      // verify the required parameter 'chainSymbol' is set
      if (chainSymbol === undefined || chainSymbol === null) {
        throw new Error("Missing the required parameter 'chainSymbol' when calling assetV1DataByAddress");
      }

      let pathParams = {
      };
      let queryParams = {
        'address': address,
        'chain_symbol': chainSymbol,
        'groups': opts['groups']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/asset/v1/data/by/address', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the assetV1DataById operation.
     * @callback module:api/AssetApi~assetV1DataByIdCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Number} assetId The asset id you are interested in
     * @param {Object} opts Optional parameters
     * @param {String} opts.groups  (default to '')
     * @param {module:api/AssetApi~assetV1DataByIdCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    assetV1DataById(assetId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'assetId' is set
      if (assetId === undefined || assetId === null) {
        throw new Error("Missing the required parameter 'assetId' when calling assetV1DataById");
      }

      let pathParams = {
      };
      let queryParams = {
        'asset_id': assetId,
        'groups': opts['groups']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/asset/v1/data/by/id', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the assetV1DataBySymbol operation.
     * @callback module:api/AssetApi~assetV1DataBySymbolCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} assetSymbol The asset symbol you are interested in
     * @param {Object} opts Optional parameters
     * @param {String} opts.groups  (default to '')
     * @param {module:api/AssetApi~assetV1DataBySymbolCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    assetV1DataBySymbol(assetSymbol, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'assetSymbol' is set
      if (assetSymbol === undefined || assetSymbol === null) {
        throw new Error("Missing the required parameter 'assetSymbol' when calling assetV1DataBySymbol");
      }

      let pathParams = {
      };
      let queryParams = {
        'asset_symbol': assetSymbol,
        'groups': opts['groups']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/asset/v1/data/by/symbol', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the assetV1TopList operation.
     * @callback module:api/AssetApi~assetV1TopListCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} opts Optional parameters
     * @param {Number} opts.page The page number for the request to get {page_size} coins at the time. (default to 1)
     * @param {Number} opts.pageSize The number of items returned per page (default to 100)
     * @param {String} opts.assetType The asset class/type (default to '')
     * @param {module:model/String} opts.sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (default to 'CREATED_ON')
     * @param {module:model/String} opts.sortDirection Sort direction ( DESC,ASC ) (default to 'DESC')
     * @param {String} opts.groups  (default to '')
     * @param {module:api/AssetApi~assetV1TopListCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    assetV1TopList(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'page': opts['page'],
        'page_size': opts['pageSize'],
        'asset_type': opts['assetType'],
        'sort_by': opts['sortBy'],
        'sort_direction': opts['sortDirection'],
        'groups': opts['groups']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/asset/v1/top/list', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}