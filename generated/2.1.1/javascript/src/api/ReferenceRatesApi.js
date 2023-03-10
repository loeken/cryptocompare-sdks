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
* ReferenceRates service.
* @module api/ReferenceRatesApi
* @version 2.1.1
*/
export default class ReferenceRatesApi {

    /**
    * Constructs a new ReferenceRatesApi. 
    * @alias module:api/ReferenceRatesApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the indexCcV1HistoricalDays operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1HistoricalDaysCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {String} instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param {Number} opts.limit The number of data points to return (default to 30)
     * @param {Number} opts.toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
     * @param {Number} opts.aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (default to 1)
     * @param {Boolean} opts.fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (default to true)
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:model/String} opts.responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (default to 'JSON')
     * @param {module:api/ReferenceRatesApi~indexCcV1HistoricalDaysCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1HistoricalDays(market, instrument, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1HistoricalDays");
      }
      // verify the required parameter 'instrument' is set
      if (instrument === undefined || instrument === null) {
        throw new Error("Missing the required parameter 'instrument' when calling indexCcV1HistoricalDays");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instrument': instrument,
        'groups': this.apiClient.buildCollectionParam(opts['groups'], 'csv'),
        'limit': opts['limit'],
        'to_ts': opts['toTs'],
        'aggregate': opts['aggregate'],
        'fill': opts['fill'],
        'mapping_priority': opts['mappingPriority'],
        'response_format': opts['responseFormat']
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
        '/index/cc/v1/historical/days', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1HistoricalHours operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1HistoricalHoursCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {String} instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param {Number} opts.limit The number of data points to return (default to 30)
     * @param {Number} opts.toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
     * @param {Number} opts.aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (default to 1)
     * @param {Boolean} opts.fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (default to true)
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:model/String} opts.responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (default to 'JSON')
     * @param {module:api/ReferenceRatesApi~indexCcV1HistoricalHoursCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1HistoricalHours(market, instrument, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1HistoricalHours");
      }
      // verify the required parameter 'instrument' is set
      if (instrument === undefined || instrument === null) {
        throw new Error("Missing the required parameter 'instrument' when calling indexCcV1HistoricalHours");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instrument': instrument,
        'groups': this.apiClient.buildCollectionParam(opts['groups'], 'csv'),
        'limit': opts['limit'],
        'to_ts': opts['toTs'],
        'aggregate': opts['aggregate'],
        'fill': opts['fill'],
        'mapping_priority': opts['mappingPriority'],
        'response_format': opts['responseFormat']
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
        '/index/cc/v1/historical/hours', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1HistoricalMessages operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1HistoricalMessagesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {String} instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Number} opts.afterTs Unix timestamp in seconds of the earliest index message in the response
     * @param {Number} opts.lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (default to 0)
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {Number} opts.limit The maximum number of index messages to return (default to 100)
     * @param {module:model/String} opts.responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (default to 'JSON')
     * @param {Boolean} opts.return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (default to false)
     * @param {module:api/ReferenceRatesApi~indexCcV1HistoricalMessagesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1HistoricalMessages(market, instrument, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1HistoricalMessages");
      }
      // verify the required parameter 'instrument' is set
      if (instrument === undefined || instrument === null) {
        throw new Error("Missing the required parameter 'instrument' when calling indexCcV1HistoricalMessages");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instrument': instrument,
        'after_ts': opts['afterTs'],
        'last_ccseq': opts['lastCcseq'],
        'mapping_priority': opts['mappingPriority'],
        'limit': opts['limit'],
        'response_format': opts['responseFormat'],
        'return_404_on_empty_response': opts['return404OnEmptyResponse']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['api_key_header', 'api_key_query'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/index/cc/v1/historical/messages', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1HistoricalMessagesHour operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1HistoricalMessagesHourCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {String} instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Number} opts.hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:model/String} opts.responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (default to 'JSON')
     * @param {Boolean} opts.return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (default to false)
     * @param {module:api/ReferenceRatesApi~indexCcV1HistoricalMessagesHourCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1HistoricalMessagesHour(market, instrument, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1HistoricalMessagesHour");
      }
      // verify the required parameter 'instrument' is set
      if (instrument === undefined || instrument === null) {
        throw new Error("Missing the required parameter 'instrument' when calling indexCcV1HistoricalMessagesHour");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instrument': instrument,
        'hour_ts': opts['hourTs'],
        'mapping_priority': opts['mappingPriority'],
        'response_format': opts['responseFormat'],
        'return_404_on_empty_response': opts['return404OnEmptyResponse']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['api_key_header', 'api_key_query'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = GENERICRESPONSE;
      return this.apiClient.callApi(
        '/index/cc/v1/historical/messages/hour', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1HistoricalMinutes operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1HistoricalMinutesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {String} instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param {Number} opts.limit The number of data points to return (default to 30)
     * @param {Number} opts.toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
     * @param {Number} opts.aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (default to 1)
     * @param {Boolean} opts.fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (default to true)
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:model/String} opts.responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (default to 'JSON')
     * @param {module:api/ReferenceRatesApi~indexCcV1HistoricalMinutesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1HistoricalMinutes(market, instrument, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1HistoricalMinutes");
      }
      // verify the required parameter 'instrument' is set
      if (instrument === undefined || instrument === null) {
        throw new Error("Missing the required parameter 'instrument' when calling indexCcV1HistoricalMinutes");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instrument': instrument,
        'groups': this.apiClient.buildCollectionParam(opts['groups'], 'csv'),
        'limit': opts['limit'],
        'to_ts': opts['toTs'],
        'aggregate': opts['aggregate'],
        'fill': opts['fill'],
        'mapping_priority': opts['mappingPriority'],
        'response_format': opts['responseFormat']
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
        '/index/cc/v1/historical/minutes', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1LatestInstrumentMetadata operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1LatestInstrumentMetadataCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {Array.<String>} instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:api/ReferenceRatesApi~indexCcV1LatestInstrumentMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1LatestInstrumentMetadata(market, instruments, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1LatestInstrumentMetadata");
      }
      // verify the required parameter 'instruments' is set
      if (instruments === undefined || instruments === null) {
        throw new Error("Missing the required parameter 'instruments' when calling indexCcV1LatestInstrumentMetadata");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instruments': this.apiClient.buildCollectionParam(instruments, 'csv'),
        'groups': this.apiClient.buildCollectionParam(opts['groups'], 'csv'),
        'mapping_priority': opts['mappingPriority']
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
        '/index/cc/v1/latest/instrument/metadata', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1LatestTick operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1LatestTickCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} market The exchange to obtain data from
     * @param {Array.<String>} instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param {module:model/String} opts.mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (default to 'CHECK_MAPPED_FIRST')
     * @param {module:api/ReferenceRatesApi~indexCcV1LatestTickCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1LatestTick(market, instruments, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'market' is set
      if (market === undefined || market === null) {
        throw new Error("Missing the required parameter 'market' when calling indexCcV1LatestTick");
      }
      // verify the required parameter 'instruments' is set
      if (instruments === undefined || instruments === null) {
        throw new Error("Missing the required parameter 'instruments' when calling indexCcV1LatestTick");
      }

      let pathParams = {
      };
      let queryParams = {
        'market': market,
        'instruments': this.apiClient.buildCollectionParam(instruments, 'csv'),
        'groups': this.apiClient.buildCollectionParam(opts['groups'], 'csv'),
        'mapping_priority': opts['mappingPriority']
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
        '/index/cc/v1/latest/tick', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1Markets operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1MarketsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} opts Optional parameters
     * @param {String} opts.market The exchange to obtain data from (default to '')
     * @param {module:api/ReferenceRatesApi~indexCcV1MarketsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1Markets(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'market': opts['market']
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
        '/index/cc/v1/markets', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1MarketsInstruments operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1MarketsInstrumentsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} opts Optional parameters
     * @param {String} opts.market The exchange to obtain data from (default to '')
     * @param {String} opts.instrument The mapped instrument to retrieve on a specific market. (default to '')
     * @param {Array.<module:model/String>} opts.instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @param {module:api/ReferenceRatesApi~indexCcV1MarketsInstrumentsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1MarketsInstruments(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'market': opts['market'],
        'instrument': opts['instrument'],
        'instrument_status': this.apiClient.buildCollectionParam(opts['instrumentStatus'], 'csv')
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
        '/index/cc/v1/markets/instruments', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the indexCcV1MarketsInstrumentsUnmapped operation.
     * @callback module:api/ReferenceRatesApi~indexCcV1MarketsInstrumentsUnmappedCallback
     * @param {String} error Error message, if any.
     * @param {module:model/GENERICRESPONSE} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {Object} opts Optional parameters
     * @param {String} opts.market The exchange to obtain data from (default to '')
     * @param {String} opts.instrument The unmapped instrument to retrieve on a specific market. (default to '')
     * @param {Array.<module:model/String>} opts.instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @param {module:api/ReferenceRatesApi~indexCcV1MarketsInstrumentsUnmappedCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/GENERICRESPONSE}
     */
    indexCcV1MarketsInstrumentsUnmapped(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'market': opts['market'],
        'instrument': opts['instrument'],
        'instrument_status': this.apiClient.buildCollectionParam(opts['instrumentStatus'], 'csv')
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
        '/index/cc/v1/markets/instruments/unmapped', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
